# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv_contrib/modules/saliency
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/saliency
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_saliency "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_saliency" "--gtest_output=xml:opencv_test_saliency.xml")
set_tests_properties(opencv_test_saliency PROPERTIES  LABELS "Extra;opencv_saliency;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
