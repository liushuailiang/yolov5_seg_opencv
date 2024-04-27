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




// 构造函数
YOLO::YOLO(Net_config config)
{
	this->confThreshold = config.confThreshold;
	this->nmsThreshold = config.nmsThreshold;
	this->objThreshold = config.objThreshold;
	this->net = cv::dnn::readNetFromONNX(config.modelpath);
	// 打开文件class.names，取出所有类别名称及数量
	ifstream ifs("class.names");
	string line;
	while (getline(ifs, line)) this->class_names.push_back(line);
	this->num_class = class_names.size();
	this->num_stride = 3;
	this->inpHeight = 640;
	this->inpWidth = 640;
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


// vector<float> mat2vector(cv::Mat img, cv::Size2d size = {512,512}) {
// 	cv::resize(img, img, size);
// 	cv::cvtColor(img, img, cv::COLOR_BGR2RGB);
// 	img.convertTo(img, CV_32FC3);
// 	//数据归一化
// 	img = img / 255.0;
// 	//将rgb数据分离为单通道
// 	std::vector<cv::Mat> mv;
// 	cv::split(img, mv);
// 	std::vector<float> d1 = mv[0].reshape(1, 1);
// 	std::vector<float> d2 = mv[1].reshape(1, 1);
// 	std::vector<float> d3 = mv[2].reshape(1, 1);
// 	std::vector<float> d4 = mv[3].reshape(1, 1);
// 	//RGB数据合并
// 	std::vector<float> input_data;
// 	input_data.insert(input_data.end(), d1.begin(), d1.end());
// 	input_data.insert(input_data.end(), d2.begin(), d2.end());
// 	input_data.insert(input_data.end(), d3.begin(), d3.end());
// 	input_data.insert(input_data.end(), d4.begin(), d4.end());
// 	return input_data;
// }

// cv::Mat vector2mat(vector<float> output)
// {
// 	cv::Size2d size = {32, 1};
// 	cv::Mat out_result(size.height, size.width, CV_32FC1, cv::Scalar(0));
// 	memcpy(out_result.data, output.data(), output.size() * sizeof(float));
// 	//output.assign((float*)out_result.datastart, (float*)out_result.dataend);
// 	return out_result;
// }

// Mat upsampleMask(const Mat& mask, const Size& targetSize) {
//     Mat upsampledMask;
//     resize(mask, upsampledMask, targetSize, 0, 0, INTER_LINEAR);
//     return upsampledMask;
// }
// Mat cropAndThreshold(const Mat& mask, const Rect& box, float thresholdVal) {
//     Mat croppedMask = Mat::zeros(mask.size(), CV_32F);
//     mask(box).copyTo(croppedMask(box));
//     threshold(croppedMask, croppedMask, thresholdVal, 1, THRESH_BINARY);
//     return croppedMask;
// }

// Mat get_mask(Mat mask, Rect point)
// {
// 	Size targetSize(640, 640);
//     Mat upsampledMask = upsampleMask(mask, targetSize);
// 	Mat croppedBinaryMask = cropAndThreshold(upsampledMask, point, 0.5);
// }

// LetterBox(frame, netInputImg, params, cv::Size(inpWidth, inpHeight));
void LetterBox(const cv::Mat& image, cv::Mat& outImage, cv::Vec4d& params, const cv::Size& newShape, 
	bool autoShape = false,
	bool scaleFill = false,
	bool scaleUp = true,
	int stride = 32,
	const cv::Scalar& color = cv::Scalar(114, 114, 114))
{
	if (false) {
		int maxLen = MAX(image.rows, image.cols);
		outImage = Mat::zeros(Size(maxLen, maxLen), CV_8UC3);
		image.copyTo(outImage(Rect(0, 0, image.cols, image.rows)));
		params[0] = 1;
		params[1] = 1;
		params[3] = 0;
		params[2] = 0;
	}

	cv::Size shape = image.size();
	float r = std::min((float)newShape.height / (float)shape.height,
		(float)newShape.width / (float)shape.width);
	if (!scaleUp)
		r = std::min(r, 1.0f);

	float ratio[2]{ r, r };
	int new_un_pad[2] = { (int)std::round((float)shape.width * r),(int)std::round((float)shape.height * r) };

	auto dw = (float)(newShape.width - new_un_pad[0]);
	auto dh = (float)(newShape.height - new_un_pad[1]);

	if (autoShape)
	{
		dw = (float)((int)dw % stride);
		dh = (float)((int)dh % stride);
	}
	else if (scaleFill)
	{
		dw = 0.0f;
		dh = 0.0f;
		new_un_pad[0] = newShape.width;
		new_un_pad[1] = newShape.height;
		ratio[0] = (float)newShape.width / (float)shape.width;
		ratio[1] = (float)newShape.height / (float)shape.height;
	}

	dw /= 2.0f;
	dh /= 2.0f;

	if (shape.width != new_un_pad[0] && shape.height != new_un_pad[1])
	{
		cv::resize(image, outImage, cv::Size(new_un_pad[0], new_un_pad[1]));
	}
	else {
		outImage = image.clone();
	}

	int top = int(std::round(dh - 0.1f));
	int bottom = int(std::round(dh + 0.1f));
	int left = int(std::round(dw - 0.1f));
	int right = int(std::round(dw + 0.1f));
	params[0] = ratio[0];
	params[1] = ratio[1];
	params[2] = left;
	params[3] = top;
	cv::copyMakeBorder(outImage, outImage, top, bottom, left, right, cv::BORDER_CONSTANT, color);
}

void GetMask2(const Mat& maskProposals, const Mat& maskProtos, OutputSeg& output, const MaskParams& maskParams) {
	int net_width = maskParams.netWidth;
	int net_height = maskParams.netHeight;
	int seg_channels = maskProtos.size[1];
	int seg_height = maskProtos.size[2];
	int seg_width = maskProtos.size[3];
	float mask_threshold = maskParams.maskThreshold;
	Vec4f params = maskParams.params;
	Size src_img_shape = maskParams.srcImgShape;

	Rect temp_rect = output.box;
	//crop from mask_protos
	int rang_x = floor((temp_rect.x * params[0] + params[2]) / net_width * seg_width);
	int rang_y = floor((temp_rect.y * params[1] + params[3]) / net_height * seg_height);
	int rang_w = ceil(((temp_rect.x + temp_rect.width) * params[0] + params[2]) / net_width * seg_width) - rang_x;
	int rang_h = ceil(((temp_rect.y + temp_rect.height) * params[1] + params[3]) / net_height * seg_height) - rang_y;

	rang_w = MAX(rang_w, 1);
	rang_h = MAX(rang_h, 1);
	if (rang_x + rang_w > seg_width) {
		if (seg_width - rang_x > 0)
			rang_w = seg_width - rang_x;
		else
			rang_x -= 1;
	}
	if (rang_y + rang_h > seg_height) {
		if (seg_height - rang_y > 0)
			rang_h = seg_height - rang_y;
		else
			rang_y -= 1;
	}

	vector<Range> roi_rangs;
	roi_rangs.push_back(Range(0, 1));
	roi_rangs.push_back(Range::all());
	roi_rangs.push_back(Range(rang_y, rang_h + rang_y));
	roi_rangs.push_back(Range(rang_x, rang_w + rang_x));

	//crop
	Mat temp_mask_protos = maskProtos(roi_rangs).clone();
	Mat protos = temp_mask_protos.reshape(0, { seg_channels,rang_w * rang_h });
	Mat matmul_res = (maskProposals * protos).t();
	Mat masks_feature = matmul_res.reshape(1, { rang_h,rang_w });
	Mat dest, mask;

	//sigmoid
	cv::exp(-masks_feature, dest);
	dest = 1.0 / (1.0 + dest);

	int left = floor((net_width / seg_width * rang_x - params[2]) / params[0]);
	int top = floor((net_height / seg_height * rang_y - params[3]) / params[1]);
	int width = ceil(net_width / seg_width * rang_w / params[0]);
	int height = ceil(net_height / seg_height * rang_h / params[1]);

	resize(dest, mask, Size(width, height), INTER_NEAREST);
	Rect mask_rect = temp_rect - Point(left, top);
	mask_rect &= Rect(0, 0, width, height);
	mask = mask(mask_rect) > mask_threshold;
	if (mask.rows != temp_rect.height || mask.cols != temp_rect.width) { //https://github.com/UNeedCryDear/yolov8-opencv-onnxruntime-cpp/pull/30
		resize(mask, mask, temp_rect.size(), INTER_NEAREST);
	}
	output.boxMask = mask;

}

// 推理函数
bool YOLO::detect(Mat& frame, vector<OutputSeg>& output)
{
	int col = frame.cols;
	int row = frame.rows;
	Mat netInputImg;
	Vec4d params;
	LetterBox(frame, netInputImg, params, cv::Size(inpWidth, inpHeight));
	Mat blob = blobFromImage(netInputImg, 1 / 255.0, Size(this->inpWidth, this->inpHeight), Scalar(0, 0, 0), true, false);
	this->net.setInput(blob);
	vector<Mat> net_output_img;
	// getUnconnectedOutLayersNames 函数则用于获取需要获取输出的层的名称列表。
	// outs[0]=[1,32,160,160]      outs[1]=[1,25200,39]
	// this->net.forward(net_output_img, this->net.getUnconnectedOutLayersNames());
	vector<string> output_layer_names{ "output0","output1" };
	net.forward(net_output_img, output_layer_names); //获取output的输出



	
	std::vector<int> class_ids;//结果id数组
	std::vector<float> confidences;//结果每个id对应置信度数组
	std::vector<cv::Rect> boxes;//每个id矩形框
	std::vector<vector<float>> picked_proposals;  //output0[:,:, 5 + _className.size():net_width]===> for mask
	int net_width = net_output_img[0].size[2];
	int net_height = net_output_img[0].size[1];
	int score_length = net_width - 37;
	float* pdata = (float*)net_output_img[0].data;
	for (int r = 0; r < net_height; r++) {    //lines
		float box_score = pdata[4];
		if (box_score >= objThreshold) {
			// 取出当前锚框的类别得分
			cv::Mat scores(1, score_length, CV_32FC1, pdata + 5);
			Point classIdPoint;
			double max_class_socre;
			float cl1 = scores.at<float>(0, 0), cl2 = scores.at<float>(0, 1);
			// 获取类别得分的最大值和对应的索引。函数用于找到一个多维数组中的最小值和最大值，以及它们的位置，最小值及其索引不需要，所以设置为0
			minMaxLoc(scores, 0, &max_class_socre, 0, &classIdPoint);
			// 得到置信度最大的类别的置信度
			max_class_socre = (float)max_class_socre;
			if (max_class_socre >= objThreshold) {
				// 根据网络输出提取类别的候选提案信息
				vector<float> temp_proto(pdata + 5 + score_length, pdata + net_width);
				picked_proposals.push_back(temp_proto);
				float x = (pdata[0] - params[2]) / params[0];  //x
				float y = (pdata[1] - params[3]) / params[1];  //y
				float w = pdata[2] / params[0];  //w
				float h = pdata[3] / params[1];  //h
				int left = MAX(int(x - 0.5 * w + 0.5), 0);
				int top = MAX(int(y - 0.5 * h + 0.5), 0);
				class_ids.push_back(classIdPoint.x);
				confidences.push_back(max_class_socre * box_score);
				boxes.push_back(Rect(left, top, int(w + 0.5), int(h + 0.5)));
			}
		}
		pdata += net_width;//下一行
	}

	//NMS
	vector<int> nms_result;
	cv::dnn::NMSBoxes(boxes, confidences, confThreshold, nmsThreshold, nms_result);
	std::vector<vector<float>> temp_mask_proposals;
	Rect holeImgRect(0, 0, frame.cols, frame.rows);
	for (int i = 0; i < nms_result.size(); ++i) {

		int idx = nms_result[i];
		OutputSeg result;
		result.id = class_ids[idx];
		result.confidence = confidences[idx];
		result.box = boxes[idx] & holeImgRect;
		temp_mask_proposals.push_back(picked_proposals[idx]);
		output.push_back(result);
	}

	MaskParams mask_params;
	mask_params.params = params;
	mask_params.srcImgShape = frame.size();
	mask_params.maskThreshold = 0.5;
	mask_params.netHeight = inpWidth;
	mask_params.netWidth = inpWidth;
	for (int i = 0; i < temp_mask_proposals.size(); ++i) {
		GetMask2(Mat(temp_mask_proposals[i]).t(), net_output_img[1], output[i], mask_params);
	}


	//******************** ****************
	// 老版本的方案，如果上面GetMask2出错，建议使用这个。
	// If the GetMask2() still reports errors , it is recommended to use GetMask().
	//Mat mask_proposals;
	//for (int i = 0; i < temp_mask_proposals.size(); ++i) {
	//	mask_proposals.push_back(Mat(temp_mask_proposals[i]).t());
	//}
	//GetMask(mask_proposals, net_output_img[1], output, mask_params);
	//*****************************************************/


	if (output.size())
		return true;
	else
		return false;
}