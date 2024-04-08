#ifndef MY_HEADER_FILE_H
#define MY_HEADER_FILE_H


#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/dnn.hpp>

using namespace cv;
using namespace dnn;
using namespace std;


class ResNet {
public:    
    ResNet();
    Mat resize_image(Mat srcimg, int newh, int neww);
    int forward(const cv::Mat image);

private:
    int num_layers;
    int num_classes;
    Net net;
};


#endif // MY_HEADER_FILE_H