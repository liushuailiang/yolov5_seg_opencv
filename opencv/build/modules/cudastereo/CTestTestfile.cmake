# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv_contrib/modules/cudastereo
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/cudastereo
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_cudastereo "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_cudastereo" "--gtest_output=xml:opencv_test_cudastereo.xml")
set_tests_properties(opencv_test_cudastereo PROPERTIES  LABELS "Extra;opencv_cudastereo;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
add_test(opencv_perf_cudastereo "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudastereo" "--gtest_output=xml:opencv_perf_cudastereo.xml")
set_tests_properties(opencv_perf_cudastereo PROPERTIES  LABELS "Extra;opencv_cudastereo;Performance" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/performance")
add_test(opencv_sanity_cudastereo "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudastereo" "--gtest_output=xml:opencv_perf_cudastereo.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_cudastereo PROPERTIES  LABELS "Extra;opencv_cudastereo;Sanity" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/sanity")
