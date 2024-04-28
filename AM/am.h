#include<string>

using namespace std;

struct Net_config
{
	float confThreshold; // 置信度阈值
	float nmsThreshold;  // NMS阈值
	float objThreshold;  // 目标置信度阈值
	string modelpath;
};

class args
{
public:
    static args *get_instance()
    {
        static args *instance;
        return instance;
    }
    bool init(const string source, string output_path, string class_name_file, Net_config yolo_conf)
    {
        m_source = source;
        m_output_path = output_path;
        m_class_name_file = class_name_file;
        m_yolo_conf = yolo_conf;
    }
    string m_source;
    string m_output_path;
    string m_class_name_file;
    Net_config m_yolo_conf;
private:
    args();
    ~args(){};
};