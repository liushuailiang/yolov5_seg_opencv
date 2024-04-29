# cmake needs this line
cmake_minimum_required(VERSION 3.1)

# Define project name
project(my_yolo)

# Find OpenCV, you may need to set OpenCV_DIR variable
# to the absolute path to the directory containing OpenCVConfig.cmake file
# via the command line or GUI
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

# Enable C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

# 设置构建类型为调试
set(CMAKE_BUILD_TYPE Debug)

# 添加编译选项以包含调试信息
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g")

# Declare the executable target built from your sources
# add_executable(my_yolo main.cpp)
add_executable(my_yolo main.cpp dataloder/dataloder.cpp model/yolo.cpp AM/AM.cpp)
# add_executable(my_yolo main.cpp dataloder/dataloder.cpp)



# Link your application with OpenCV libraries
target_link_libraries(my_yolo PRIVATE ${OpenCV_LIBS})
