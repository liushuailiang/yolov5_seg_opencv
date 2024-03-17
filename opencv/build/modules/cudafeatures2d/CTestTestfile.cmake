# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv_contrib/modules/cudafeatures2d
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/cudafeatures2d
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_cudafeatures2d "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_cudafeatures2d" "--gtest_output=xml:opencv_test_cudafeatures2d.xml")
set_tests_properties(opencv_test_cudafeatures2d PROPERTIES  LABELS "Extra;opencv_cudafeatures2d;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
add_test(opencv_perf_cudafeatures2d "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudafeatures2d" "--gtest_output=xml:opencv_perf_cudafeatures2d.xml")
set_tests_properties(opencv_perf_cudafeatures2d PROPERTIES  LABELS "Extra;opencv_cudafeatures2d;Performance" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/performance")
add_test(opencv_sanity_cudafeatures2d "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudafeatures2d" "--gtest_output=xml:opencv_perf_cudafeatures2d.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_cudafeatures2d PROPERTIES  LABELS "Extra;opencv_cudafeatures2d;Sanity" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/sanity")