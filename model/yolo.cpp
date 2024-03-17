#include <fstream>
#include <sstream>
#include <iostream>
#include <vector>
#include <opencv2/dnn.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
// #include "../dataloder/dataloder.h"
#include "yolo.h"

using namespace cv;
using namespace dnn;
using namespace std;



// 检查s是否以sub结尾
int endsWith(string s, string sub) {
	return s.rfind(sub) == (s.length() - sub.length()) ? 1 : 0;
}

const float anchors_640[3][6] = { {10.0,  13.0, 16.0,  30.0,  33.0,  23.0},
								 {30.0,  61.0, 62.0,  45.0,  59.0,  119.0},
								 {116.0, 90.0, 156.0, 198.0, 373.0, 326.0} };

const float anchors_1280[4][6] = { {19, 27, 44, 40, 38, 94},{96, 68, 86, 152, 180, 137},{140, 301, 303, 264, 238, 542},
					   {436, 615, 739, 380, 925, 792} };

// 构造函数
YOLO::YOLO(Net_config config)
{
	this->confThreshold = config.confThreshold;
	this->nmsThreshold = config.nmsThreshold;
	this->objThreshold = config.objThreshold;
	this->net = readNet(config.modelpath);
	// 打开文件class.names，取出所有类别名称及数量
	ifstream ifs("class.names");
	string line;
	while (getline(ifs, line)) this->class_names.push_back(line);
	this->num_class = class_names.size();

	if (endsWith(config.modelpath, "6.onnx"))
	{
		anchors = (float*)anchors_1280;
		this->num_stride = 4;
		this->inpHeight = 1280;
		this->inpWidth = 1280;
	}
	else
	{
		anchors = (float*)anchors_640;
		this->num_stride = 3;
		this->inpHeight = 640;
		this->inpWidth = 640;
	}
}

Mat YOLO::resize_image(Mat srcimg, int *newh, int *neww, int *top, int *left)
{
	// 取出行数和列数
	int srch = srcimg.rows, srcw = srcimg.cols;
	*newh = this->inpHeight;
	*neww = this->inpWidth;
	Mat dstimg;
	// 保持比例且行数不等于列数
	if (this->keep_ratio && srch != srcw) {
		// 长宽比
		float hw_scale = (float)srch / srcw;
		if (hw_scale > 1) {
			*newh = this->inpHeight;
			*neww = int(this->inpWidth / hw_scale);
			resize(srcimg, dstimg, Size(*neww, *newh), INTER_AREA);
			*left = int((this->inpWidth - *neww) * 0.5);
			copyMakeBorder(dstimg, dstimg, 0, 0, *left, this->inpWidth - *neww - *left, BORDER_CONSTANT, 114);
		}
		else {
			*newh = (int)this->inpHeight * hw_scale;
			*neww = this->inpWidth;
			resize(srcimg, dstimg, Size(*neww, *newh), INTER_AREA);
			*top = (int)(this->inpHeight - *newh) * 0.5;
			copyMakeBorder(dstimg, dstimg, *top, this->inpHeight - *newh - *top, 0, 0, BORDER_CONSTANT, 114);
		}
	}
	// 若不需要保持高宽比，可以直接进行resize操作
	else {
		resize(srcimg, dstimg, Size(*neww, *newh), INTER_AREA);
	}
	return dstimg;
}

// 绘制检测结果
void YOLO::drawPred(float conf, int left, int top, int right, int bottom, Mat& frame, int classid)   // Draw the predicted bounding box
{
	//绘制一个红色的矩形框，矩形框的左上角顶点坐标为 (left, top)，右下角顶点坐标为 (right, bottom)，并且线宽为 2 像素。
	rectangle(frame, Point(left, top), Point(right, bottom), Scalar(0, 0, 255), 2);

	// 写明类别和置信度
	string label = format("%.2f", conf);
	label = this->class_names[classid] + ":" + label;

	//Display the label at the top of the bounding box
	int baseLine;
	// 用来存储文本标签 label 经过指定字体、字号、线宽等参数处理后的尺寸大小
	Size labelSize = getTextSize(label, FONT_HERSHEY_SIMPLEX, 0.5, 1, &baseLine);
	top = max(top, labelSize.height);
	//rectangle(frame, Point(left, top - int(1.5 * labelSize.height)), Point(left + int(1.5 * labelSize.width), top + baseLine), Scalar(0, 255, 0), FILLED);
	putText(frame, label, Point(left, top), FONT_HERSHEY_SIMPLEX, 0.75, Scalar(0, 255, 0), 1);
}


// 推理函数
void YOLO::detect(Mat& frame)
{
	// 这个传入参数，会在resize_image中被替换成this->inpWidth等参数，并不是输入零
	int newh = 0, neww = 0, padh = 0, padw = 0;
	// 输入图像，预处理包括：resize、归一化，调整通道顺序为BGR
	Mat dstimg = this->resize_image(frame, &newh, &neww, &padh, &padw);
	// cout << dstimg.size << dstimg.channels() << endl;
	// blob.size = 1 x 3 x 640 x 640  dims = 1
	Mat blob = blobFromImage(dstimg, 1 / 255.0, Size(this->inpWidth, this->inpHeight), Scalar(0, 0, 0), true, false);
	// Mat blob = blobFromImage(dstimg, 1.0, Size(this->inpWidth, this->inpHeight), Scalar(0, 0, 0), false, false);
	// cout << blob.size << blob.channels() << endl;
	this->net.setInput(blob);
	vector<Mat> outs;
	// getUnconnectedOutLayersNames 函数则用于获取需要获取输出的层的名称列表。
	this->net.forward(outs, this->net.getUnconnectedOutLayersNames());
	// cout << outs[0].size << outs[0].channels();
	// 提议框的数量
	int num_proposal = outs[0].size[1]; // 第二个维度的大小
	int nout = outs[0].size[2]; // 第三个维度的大小
	if (outs[0].dims > 2)
	{
		// size为1*25200*6
		outs[0] = outs[0].reshape(0, num_proposal);
	}
	
	/////generate proposals
	vector<float> confidences;
	vector<Rect> boxes;
	vector<int> classIds;
	// 得到输入图像与原图像相比的缩放比例
	float ratioh = (float)frame.rows / newh, ratiow = (float)frame.cols / neww;
	int n = 0, q = 0, i = 0, j = 0, row_ind = 0; ///xmin,ymin,xamx,ymax,box_score,class_score
	// 边界框、置信度、分类结果
	float* pdata = (float*)outs[0].data;





	// // 假设每个元素的数量为 size,
	// // 26.0759，292.71，24.2573，13.4035，9.21525e-06，0.999936
	// 输出格式：中心点、宽高、置信度、类别
	// long long size = (long long)outs[0].size[0] * outs[0].size[1] * outs[0].size[2];

	// for (int i = 0; i < size; ++i) {
	// 	cout << "pdata[" << i << "] = " << pdata[i] << std::endl;
	// }




	for (n = 0; n < this->num_stride; n++)
	{
		const float stride = pow(2, n + 3);
		int num_grid_x = (int)ceil((this->inpWidth / stride));
		int num_grid_y = (int)ceil((this->inpHeight / stride));
		for (q = 0; q < 3; q++)    ///anchor
		{
			// x、y 方向上的网格数量
			const float anchor_w = this->anchors[n * 6 + q * 2];
			const float anchor_h = this->anchors[n * 6 + q * 2 + 1];
			for (i = 0; i < num_grid_y; i++)
			{
				for (j = 0; j < num_grid_x; j++)
				{
					float box_score = pdata[4];
					if (box_score > this->objThreshold)
					{
						Mat scores = outs[0].row(row_ind).colRange(5, nout);
						Point classIdPoint;
						double max_class_socre;
						// Get the value and location of the maximum score
						minMaxLoc(scores, 0, &max_class_socre, 0, &classIdPoint);
						max_class_socre *= box_score;
						if (max_class_socre > this->confThreshold)
						{ 
							const int class_idx = classIdPoint.x;
    						// 计算比例因子和填充量
							float gain = min((float)this->inpWidth / frame.cols, (float)this->inpHeight / frame.rows);
							float padw = (this->inpWidth - frame.cols * gain) / 2;
							float padh = (this->inpHeight - frame.rows * gain) / 2;

							float cx = (pdata[0] - padw) / gain;  ///cx
							float cy = (pdata[1] - padh) / gain;  ///cy
							float w = pdata[2] / gain;        ///w
							float h = pdata[3] / gain;        ///h

							int left = int((cx - 0.5 * w));
							int top = int((cy - 0.5 * h));

							confidences.push_back((float)max_class_socre);
							boxes.push_back(Rect(left, top, (int)w, (int)h));
							classIds.push_back(class_idx);
						}
					}
					row_ind++;
					pdata += nout;
				}
			}
		}
	}

	// Perform non maximum suppression to eliminate redundant overlapping boxes with
	// lower confidences
	vector<int> indices;
	NMSBoxes(boxes, confidences, this->confThreshold, this->nmsThreshold, indices);
	for (size_t i = 0; i < indices.size(); ++i)
	{
		int idx = indices[i];
		Rect box = boxes[idx];
		this->drawPred(confidences[idx], box.x, box.y,
			box.x + box.width, box.y + box.height, frame, classIds[idx]);
	}
}
