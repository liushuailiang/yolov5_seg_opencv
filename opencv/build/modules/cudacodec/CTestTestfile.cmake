# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv_contrib/modules/cudacodec
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/cudacodec
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_cudacodec "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_cudacodec" "--gtest_output=xml:opencv_test_cudacodec.xml")
set_tests_properties(opencv_test_cudacodec PROPERTIES  LABELS "Extra;opencv_cudacodec;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
add_test(opencv_perf_cudacodec "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudacodec" "--gtest_output=xml:opencv_perf_cudacodec.xml")
set_tests_properties(opencv_perf_cudacodec PROPERTIES  LABELS "Extra;opencv_cudacodec;Performance" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/performance")
add_test(opencv_sanity_cudacodec "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudacodec" "--gtest_output=xml:opencv_perf_cudacodec.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_cudacodec PROPERTIES  LABELS "Extra;opencv_cudacodec;Sanity" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/sanity")
