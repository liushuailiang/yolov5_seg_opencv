#include <fstream>
#include <sstream>
#include <iostream>
#include <vector>
#include <opencv2/dnn.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
// #include "../dataloder/dataloder.h"
#include "../AM/AM.h"

using namespace cv;
using namespace dnn;
using namespace std;


struct OutputSeg {
	int id;         
	float confidence;
	cv::Rect box;     
	cv::Mat boxMask;    
};

struct MaskParams {
	//int segChannels = 32;
	//int segWidth = 160;
	//int segHeight = 160;
	int netWidth = 640;
	int netHeight = 640;
	float maskThreshold = 0.5;
	cv::Size srcImgShape;
	cv::Vec4d params;

};

class YOLO
{
public:
	YOLO(Net_config config); // 构造函数
	bool detect(Mat& frame, vector<OutputSeg>& output); // 推理函数
	vector<string> class_names;

private:
	// 一系列模型参数配置
	float* anchors;
	// 不同尺度数量
	int num_stride;
	int inpWidth;
	int inpHeight;
	
	int num_class;
	float confThreshold;
	float nmsThreshold;
	float objThreshold;
	const bool keep_ratio = true;
	Net net;
	// 输入图像预处理
	Mat resize_image(Mat srcimg, int *newh, int *neww, int *top, int *left);
};