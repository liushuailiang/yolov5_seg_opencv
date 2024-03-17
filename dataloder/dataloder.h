#include <opencv2/opencv.hpp>
#include <string>

class dataLoader {
private:
    std::string source; // 视频源，可以是本地文件路径或者 RTSP 地址
    cv::VideoCapture cap; // 视频捕获对象
    cv::Mat frame; // 存储当前帧图像
public:
    dataLoader(const std::string& source);
    ~dataLoader();
    // 获取一帧图像
    cv::Mat getFrame();
    std::vector<float> mat_to_tensor(const cv::Mat& image);
};
