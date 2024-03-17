# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv_contrib/modules/cudabgsegm
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/cudabgsegm
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_cudabgsegm "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_cudabgsegm" "--gtest_output=xml:opencv_test_cudabgsegm.xml")
set_tests_properties(opencv_test_cudabgsegm PROPERTIES  LABELS "Extra;opencv_cudabgsegm;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
add_test(opencv_perf_cudabgsegm "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudabgsegm" "--gtest_output=xml:opencv_perf_cudabgsegm.xml")
set_tests_properties(opencv_perf_cudabgsegm PROPERTIES  LABELS "Extra;opencv_cudabgsegm;Performance" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/performance")
add_test(opencv_sanity_cudabgsegm "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudabgsegm" "--gtest_output=xml:opencv_perf_cudabgsegm.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_cudabgsegm PROPERTIES  LABELS "Extra;opencv_cudabgsegm;Sanity" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/sanity")
