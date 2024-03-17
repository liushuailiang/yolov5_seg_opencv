# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv/modules/imgcodecs
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/imgcodecs
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_imgcodecs "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_imgcodecs" "--gtest_output=xml:opencv_test_imgcodecs.xml")
set_tests_properties(opencv_test_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
add_test(opencv_perf_imgcodecs "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_imgcodecs" "--gtest_output=xml:opencv_perf_imgcodecs.xml")
set_tests_properties(opencv_perf_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Performance" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/performance")
add_test(opencv_sanity_imgcodecs "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_imgcodecs" "--gtest_output=xml:opencv_perf_imgcodecs.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Sanity" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/sanity")
