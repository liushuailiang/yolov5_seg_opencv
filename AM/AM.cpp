#include "AM.h"

args* args::instance = nullptr; // 静态成员变量初始化

args::args() {
    // 构造函数的实现
}

args* args::get_instance() {
    if (!instance) {
        instance = new args();
    }
    return instance;
}
