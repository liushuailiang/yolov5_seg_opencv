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


int main()
{
	Net_config yolo_nets = { 0.5, 0.7, 0, "/root/autodl-tmp/opencv/yolo-best.onnx" };
	YOLO yolo_model(yolo_nets);
	string imgpath = "images/car.mp4";
	dataLoader dataLoader(imgpath);
	int frame_count = 0;
	while (true)
	{
		Mat srcimg = dataLoader.getFrame();
		if (srcimg.empty())  // 检查是否读取到了新的帧
            break;  // 如果未读取到新的帧，跳出循环
		yolo_model.detect(srcimg);
		string output_filename = "/root/autodl-tmp/opencv/output/car/frame_" + to_string(frame_count) + ".jpg";
		imwrite(output_filename, srcimg);
		++frame_count;
		// 输出保存结果信息
		cout << "Saved frame " << frame_count << " to " << output_filename << endl;
	}
	
}