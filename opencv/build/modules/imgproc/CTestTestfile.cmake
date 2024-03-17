# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv/modules/imgproc
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/imgproc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_imgproc "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_imgproc" "--gtest_output=xml:opencv_test_imgproc.xml")
set_tests_properties(opencv_test_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
add_test(opencv_perf_imgproc "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_imgproc" "--gtest_output=xml:opencv_perf_imgproc.xml")
set_tests_properties(opencv_perf_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Performance" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/performance")
add_test(opencv_sanity_imgproc "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_imgproc" "--gtest_output=xml:opencv_perf_imgproc.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Sanity" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/sanity")
