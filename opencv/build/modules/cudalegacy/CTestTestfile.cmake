# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv_contrib/modules/cudalegacy
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/cudalegacy
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_cudalegacy "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_cudalegacy" "--gtest_output=xml:opencv_test_cudalegacy.xml")
set_tests_properties(opencv_test_cudalegacy PROPERTIES  LABELS "Extra;opencv_cudalegacy;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
add_test(opencv_perf_cudalegacy "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudalegacy" "--gtest_output=xml:opencv_perf_cudalegacy.xml")
set_tests_properties(opencv_perf_cudalegacy PROPERTIES  LABELS "Extra;opencv_cudalegacy;Performance" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/performance")
add_test(opencv_sanity_cudalegacy "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudalegacy" "--gtest_output=xml:opencv_perf_cudalegacy.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_cudalegacy PROPERTIES  LABELS "Extra;opencv_cudalegacy;Sanity" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/sanity")
