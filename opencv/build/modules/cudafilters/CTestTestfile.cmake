# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv_contrib/modules/cudafilters
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/cudafilters
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_cudafilters "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_cudafilters" "--gtest_output=xml:opencv_test_cudafilters.xml")
set_tests_properties(opencv_test_cudafilters PROPERTIES  LABELS "Extra;opencv_cudafilters;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
add_test(opencv_perf_cudafilters "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudafilters" "--gtest_output=xml:opencv_perf_cudafilters.xml")
set_tests_properties(opencv_perf_cudafilters PROPERTIES  LABELS "Extra;opencv_cudafilters;Performance" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/performance")
add_test(opencv_sanity_cudafilters "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudafilters" "--gtest_output=xml:opencv_perf_cudafilters.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_cudafilters PROPERTIES  LABELS "Extra;opencv_cudafilters;Sanity" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/sanity")
