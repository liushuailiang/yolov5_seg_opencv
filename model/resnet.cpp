#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/dnn.hpp>
#include "resnet.h"

using namespace cv;
using namespace dnn;
using namespace std;



ResNet::ResNet()
{
    std::cout << "ResNet model with " << num_layers << " layers initialized." << std::endl;
    this->net = cv::dnn::readNetFromONNX("/root/autodl-tmp/resnet_my.onnx");
}

Mat ResNet::resize_image(Mat srcimg, int newh, int neww)
{
    // 取出行数和列数
	int srch = srcimg.rows, srcw = srcimg.cols;
	newh = 224;
	neww = 224;
	Mat dstimg;
	// 保持比例且行数不等于列数
	resize(srcimg, dstimg, Size(neww, newh), INTER_AREA);

	return dstimg;
}

int ResNet::forward(const cv::Mat image) {
    // 方案二
    cv::Mat inputBlob1;
    cv::cvtColor(image, image, cv::COLOR_BGR2RGB); // Convert to RGB if not already
    cv::Mat image2;
    cv::resize(image, inputBlob1, cv::Size(224, 224)); // Resize to 256x256
    inputBlob1.convertTo(inputBlob1, CV_32FC3, 1.0 / 255.0); // Convert to float format 归一化的过程，所有元素除以255
    cv::Scalar mean(0.485, 0.456, 0.406), std(0.229, 0.224, 0.225), mean1(1.0, 1.0, 1.0);
    cv::subtract(inputBlob1, mean, inputBlob1); // Subtract mean 3 = 1 - 2
    cv::divide(inputBlob1, std, inputBlob1); // Divide by std
    cv::Mat inputBlob = cv::dnn::blobFromImage(inputBlob1, 1.0, cv::Size(), cv::Scalar(0,0,0), true, false);


    // // 方案三
    // cv::Mat image_resize1 = resize_image(image, 224, 224);
    // cv::Mat inputBlob = cv::dnn::blobFromImage(image_resize1, 1, cv::Size(), cv::Scalar(0.485, 0.456, 0.406), true, false);

    net.setInput(inputBlob);
    std::vector<cv::String> output_layer_names = this->net.getUnconnectedOutLayersNames();
    // 执行模型的前向传播
    std::vector<cv::Mat> outputs;
    this->net.forward(outputs, output_layer_names);
    Mat output = outputs[0];
    std::vector<float> vec = output.reshape(1, 3);
    int maxPosition = max_element(vec.begin(),vec.end()) - vec.begin();
    cout << maxPosition;
    return maxPosition;
}







