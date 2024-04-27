#include <fstream>
#include <sstream>
#include <iostream>
#include <vector>
#include <opencv2/dnn.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include "dataloder/dataloder.h"
#include "model/yolo.h"

using namespace cv;
using namespace dnn;
using namespace std;


void DrawPred(Mat& img, vector<OutputSeg> result, std::vector<std::string> classNames, vector<Scalar> color, bool isVideo) {
	Mat mask = img.clone();
	for (int i = 0; i < result.size(); i++) {
		int left, top;
		left = result[i].box.x;
		top = result[i].box.y;
		int color_num = i;
		rectangle(img, result[i].box, color[result[i].id], 2, 8);
		if (result[i].boxMask.rows && result[i].boxMask.cols > 0)
			mask(result[i].box).setTo(color[result[i].id], result[i].boxMask);
		string label = classNames[result[i].id] + ":" + to_string(result[i].confidence);
		int baseLine;
		Size labelSize = getTextSize(label, FONT_HERSHEY_SIMPLEX, 0.5, 1, &baseLine);
		top = max(top, labelSize.height);
		//rectangle(frame, Point(left, top - int(1.5 * labelSize.height)), Point(left + int(1.5 * labelSize.width), top + baseLine), Scalar(0, 255, 0), FILLED);
		putText(img, label, Point(left, top), FONT_HERSHEY_SIMPLEX, 1, color[result[i].id], 2);
	}
	addWeighted(img, 0.5, mask, 0.5, 0, img); //add mask to src
}


int main()
{
	Net_config yolo_nets = { 0.3, 0.5, 0.3, "/root/autodl-tmp/opencv/weights/seg_best.onnx" };
	YOLO yolo_model(yolo_nets);
	string imgpath = "images/car.mp4";
	dataLoader dataLoader(imgpath);
	int frame_count = 0;
	vector<Scalar> color;
	srand(time(0));
	for (int i = 0; i < 80; i++) {
		int b = rand() % 256;
		int g = rand() % 256;
		int r = rand() % 256;
		color.push_back(Scalar(b, g, r));
	}
	bool isVideo = true;
	while (true)
	{
		vector<OutputSeg> result;
		Mat srcimg = dataLoader.getFrame();
		if (srcimg.empty())  // 检查是否读取到了新的帧
            break;  // 如果未读取到新的帧，跳出循环
		yolo_model.detect(srcimg, result);
		if (yolo_model.detect(srcimg, result)) 
		{
			DrawPred(srcimg, result, yolo_model._className, color, isVideo);
		}
		string output_filename = "/root/autodl-tmp/opencv/output/car/frame_" + to_string(frame_count) + ".jpg";
		imwrite(output_filename, srcimg);
		++frame_count;
		// 输出保存结果信息
		cout << "Saved frame " << frame_count << " to " << output_filename << endl;
	}
	
}