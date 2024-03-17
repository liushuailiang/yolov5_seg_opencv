# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv_contrib/modules/videostab
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/videostab
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_videostab "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_videostab" "--gtest_output=xml:opencv_test_videostab.xml")
set_tests_properties(opencv_test_videostab PROPERTIES  LABELS "Extra;opencv_videostab;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
