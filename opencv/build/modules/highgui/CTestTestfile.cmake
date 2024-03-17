# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv/modules/highgui
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/highgui
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_highgui "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_highgui" "--gtest_output=xml:opencv_test_highgui.xml")
set_tests_properties(opencv_test_highgui PROPERTIES  LABELS "Main;opencv_highgui;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
