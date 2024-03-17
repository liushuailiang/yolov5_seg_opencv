#include <opencv2/opencv.hpp>
#include <string>
#include <iostream>
#include "dataloder.h"

using namespace cv;
// using namespace dnn;
using namespace std;


dataLoader::dataLoader(const string& source) : source(source) {
    // 根据 source 的值选择适当的视频源,string.find()未找到时返回string::npos
    if (source.find(".mp4") != string::npos) {
        cap.open(source); // 本地视频文件
    } else if (source.find("rtsp://") != string::npos) {
        cap.open(source, cv::CAP_FFMPEG); // RTSP 网络视频流
    } else {
        std::cerr << "Unsupported source format." << std::endl;
    }
    if (cap.isOpened())
    {
        cout << "open source successfuly \n";
    }
    else
    {
        cerr << "open source failed \n";
    }
}

dataLoader::~dataLoader() {
    cap.release(); // 释放资源
}

// 获取一帧图像
cv::Mat dataLoader::getFrame() {
    cap >> frame; // 读取下一帧
    // cout << frame.channels();
    return frame;
}
