# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv_contrib/modules/dnn_superres
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/dnn_superres
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_dnn_superres "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_dnn_superres" "--gtest_output=xml:opencv_test_dnn_superres.xml")
set_tests_properties(opencv_test_dnn_superres PROPERTIES  LABELS "Extra;opencv_dnn_superres;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
add_test(opencv_perf_dnn_superres "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_dnn_superres" "--gtest_output=xml:opencv_perf_dnn_superres.xml")
set_tests_properties(opencv_perf_dnn_superres PROPERTIES  LABELS "Extra;opencv_dnn_superres;Performance" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/performance")
add_test(opencv_sanity_dnn_superres "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_dnn_superres" "--gtest_output=xml:opencv_perf_dnn_superres.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_dnn_superres PROPERTIES  LABELS "Extra;opencv_dnn_superres;Sanity" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/sanity")
