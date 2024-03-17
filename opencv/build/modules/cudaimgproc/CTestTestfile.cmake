# CMake generated Testfile for 
# Source directory: /root/autodl-tmp/opencv/opencv_contrib/modules/cudaimgproc
# Build directory: /root/autodl-tmp/opencv/opencv/build/modules/cudaimgproc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_cudaimgproc "/root/autodl-tmp/opencv/opencv/build/bin/opencv_test_cudaimgproc" "--gtest_output=xml:opencv_test_cudaimgproc.xml")
set_tests_properties(opencv_test_cudaimgproc PROPERTIES  LABELS "Extra;opencv_cudaimgproc;Accuracy" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/accuracy")
add_test(opencv_perf_cudaimgproc "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudaimgproc" "--gtest_output=xml:opencv_perf_cudaimgproc.xml")
set_tests_properties(opencv_perf_cudaimgproc PROPERTIES  LABELS "Extra;opencv_cudaimgproc;Performance" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/performance")
add_test(opencv_sanity_cudaimgproc "/root/autodl-tmp/opencv/opencv/build/bin/opencv_perf_cudaimgproc" "--gtest_output=xml:opencv_perf_cudaimgproc.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_cudaimgproc PROPERTIES  LABELS "Extra;opencv_cudaimgproc;Sanity" WORKING_DIRECTORY "/root/autodl-tmp/opencv/opencv/build/test-reports/sanity")
