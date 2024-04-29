#ifndef ARG_MEM
#define ARG_MEM

#include <string>

// 阈值设置
struct Net_config
{
    float confThreshold; // 置信度阈值
    float nmsThreshold;  // NMS阈值
    float objThreshold;  // 目标置信度阈值
    std::string modelpath;
};

class args
{
public:
    static args* get_instance();

    bool init(std::string source, std::string output_path, std::string class_name_file, Net_config yolo_conf)
    {
        this->m_source = source;
        this->m_output_path = output_path;
        this->m_class_name_file = class_name_file;
        this->m_yolo_conf = yolo_conf;
        return true;
    }

    std::string m_source;
    std::string m_output_path;
    std::string m_class_name_file;
    Net_config m_yolo_conf;

private:
    args(); // 将构造函数设为私有，防止外部直接实例化
    static args* instance; // 声明静态成员变量用来保存唯一实例
};


#endif
