# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv_contrib/modules/tracking
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/tracking
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_tracking "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_tracking" "--gtest_output=xml:opencv_test_tracking.xml")
set_tests_properties(opencv_test_tracking PROPERTIES  LABELS "Extra;opencv_tracking;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
add_test(opencv_perf_tracking "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_tracking" "--gtest_output=xml:opencv_perf_tracking.xml")
set_tests_properties(opencv_perf_tracking PROPERTIES  LABELS "Extra;opencv_tracking;Performance" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/performance")
add_test(opencv_sanity_tracking "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_tracking" "--gtest_output=xml:opencv_perf_tracking.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_tracking PROPERTIES  LABELS "Extra;opencv_tracking;Sanity" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/sanity")
