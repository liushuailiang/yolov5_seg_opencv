# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv_contrib/modules/quality
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/quality
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_quality "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_quality" "--gtest_output=xml:opencv_test_quality.xml")
set_tests_properties(opencv_test_quality PROPERTIES  LABELS "Extra;opencv_quality;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
