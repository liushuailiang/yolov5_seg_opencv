# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/cudawarping
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_cudawarping "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_cudawarping" "--gtest_output=xml:opencv_test_cudawarping.xml")
set_tests_properties(opencv_test_cudawarping PROPERTIES  LABELS "Extra;opencv_cudawarping;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
add_test(opencv_perf_cudawarping "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudawarping" "--gtest_output=xml:opencv_perf_cudawarping.xml")
set_tests_properties(opencv_perf_cudawarping PROPERTIES  LABELS "Extra;opencv_cudawarping;Performance" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/performance")
add_test(opencv_sanity_cudawarping "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudawarping" "--gtest_output=xml:opencv_perf_cudawarping.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_cudawarping PROPERTIES  LABELS "Extra;opencv_cudawarping;Sanity" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/sanity")
