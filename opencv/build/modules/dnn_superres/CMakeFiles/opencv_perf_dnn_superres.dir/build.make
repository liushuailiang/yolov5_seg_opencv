# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/autodl-tmp/opencv/opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/autodl-tmp/opencv/opencv/build

# Include any dependencies generated for this target.
include modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/depend.make

# Include the progress variables for this target.
include modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/progress.make

# Include the compile flags for this target's objects.
include modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/flags.make

modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o: modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/flags.make
modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o: /root/autodl-tmp/opencv/opencv_contrib/modules/dnn_superres/perf/perf_dnn_superres.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/autodl-tmp/opencv/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o"
	cd /root/autodl-tmp/opencv/opencv/build/modules/dnn_superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o -c /root/autodl-tmp/opencv/opencv_contrib/modules/dnn_superres/perf/perf_dnn_superres.cpp

modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.i"
	cd /root/autodl-tmp/opencv/opencv/build/modules/dnn_superres && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/autodl-tmp/opencv/opencv_contrib/modules/dnn_superres/perf/perf_dnn_superres.cpp > CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.i

modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.s"
	cd /root/autodl-tmp/opencv/opencv/build/modules/dnn_superres && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/autodl-tmp/opencv/opencv_contrib/modules/dnn_superres/perf/perf_dnn_superres.cpp -o CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.s

modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o.requires:

.PHONY : modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o.requires

modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o.provides: modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o.requires
	$(MAKE) -f modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/build.make modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o.provides.build
.PHONY : modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o.provides

modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o.provides.build: modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o


modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o: modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/flags.make
modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o: /root/autodl-tmp/opencv/opencv_contrib/modules/dnn_superres/perf/perf_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/autodl-tmp/opencv/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o"
	cd /root/autodl-tmp/opencv/opencv/build/modules/dnn_superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o -c /root/autodl-tmp/opencv/opencv_contrib/modules/dnn_superres/perf/perf_main.cpp

modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.i"
	cd /root/autodl-tmp/opencv/opencv/build/modules/dnn_superres && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/autodl-tmp/opencv/opencv_contrib/modules/dnn_superres/perf/perf_main.cpp > CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.i

modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.s"
	cd /root/autodl-tmp/opencv/opencv/build/modules/dnn_superres && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/autodl-tmp/opencv/opencv_contrib/modules/dnn_superres/perf/perf_main.cpp -o CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.s

modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o.requires:

.PHONY : modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o.requires

modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o.provides: modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o.requires
	$(MAKE) -f modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/build.make modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o.provides.build
.PHONY : modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o.provides

modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o.provides.build: modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o


# Object files for target opencv_perf_dnn_superres
opencv_perf_dnn_superres_OBJECTS = \
"CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o" \
"CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o"

# External object files for target opencv_perf_dnn_superres
opencv_perf_dnn_superres_EXTERNAL_OBJECTS =

bin/opencv_perf_dnn_superres: modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o
bin/opencv_perf_dnn_superres: modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o
bin/opencv_perf_dnn_superres: modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/build.make
bin/opencv_perf_dnn_superres: lib/libopencv_ts.a
bin/opencv_perf_dnn_superres: lib/libopencv_dnn_superres.so.4.5.0
bin/opencv_perf_dnn_superres: lib/libopencv_highgui.so.4.5.0
bin/opencv_perf_dnn_superres: lib/libopencv_quality.so.4.5.0
bin/opencv_perf_dnn_superres: lib/libopencv_dnn.so.4.5.0
bin/opencv_perf_dnn_superres: lib/libopencv_videoio.so.4.5.0
bin/opencv_perf_dnn_superres: lib/libopencv_imgcodecs.so.4.5.0
bin/opencv_perf_dnn_superres: lib/libopencv_ml.so.4.5.0
bin/opencv_perf_dnn_superres: lib/libopencv_imgproc.so.4.5.0
bin/opencv_perf_dnn_superres: lib/libopencv_core.so.4.5.0
bin/opencv_perf_dnn_superres: lib/libopencv_cudev.so.4.5.0
bin/opencv_perf_dnn_superres: modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/autodl-tmp/opencv/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../bin/opencv_perf_dnn_superres"
	cd /root/autodl-tmp/opencv/opencv/build/modules/dnn_superres && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_perf_dnn_superres.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/build: bin/opencv_perf_dnn_superres

.PHONY : modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/build

modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/requires: modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_dnn_superres.cpp.o.requires
modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/requires: modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/perf/perf_main.cpp.o.requires

.PHONY : modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/requires

modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/clean:
	cd /root/autodl-tmp/opencv/opencv/build/modules/dnn_superres && $(CMAKE_COMMAND) -P CMakeFiles/opencv_perf_dnn_superres.dir/cmake_clean.cmake
.PHONY : modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/clean

modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/depend:
	cd /root/autodl-tmp/opencv/opencv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/autodl-tmp/opencv/opencv /root/autodl-tmp/opencv/opencv_contrib/modules/dnn_superres /root/autodl-tmp/opencv/opencv/build /root/autodl-tmp/opencv/opencv/build/modules/dnn_superres /root/autodl-tmp/opencv/opencv/build/modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/dnn_superres/CMakeFiles/opencv_perf_dnn_superres.dir/depend
