#include <fstream>
#include <sstream>
#include <iostream>
#include <vector>
#include <opencv2/dnn.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
// #include "../dataloder/dataloder.h"

using namespace cv;
using namespace dnn;
using namespace std;

// 阈值设置
struct Net_config
{
	float confThreshold; // 置信度阈值
	float nmsThreshold;  // NMS阈值
	float objThreshold;  // 目标置信度阈值
	string modelpath;
};


class YOLO
{
public:
	YOLO(Net_config config); // 构造函数
	void detect(Mat& frame); // 推理函数
private:
	// 一系列模型参数配置
	float* anchors;
	// 不同尺度数量
	int num_stride;
	int inpWidth;
	int inpHeight;
	vector<string> class_names;
	int num_class;
	
	float confThreshold;
	float nmsThreshold;
	float objThreshold;
	const bool keep_ratio = true;
	Net net;
	// 绘制检测结果
	void drawPred(float conf, int left, int top, int right, int bottom, Mat& frame, int classid);
	// 输入图像预处理
	Mat resize_image(Mat srcimg, int *newh, int *neww, int *top, int *left);
};
