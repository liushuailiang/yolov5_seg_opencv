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
include modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/depend.make

# Include the progress variables for this target.
include modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/progress.make

# Include the compile flags for this target's objects.
include modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/flags.make

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/flags.make
modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o: /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/autodl-tmp/opencv/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o -c /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_main.cpp

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.i"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_main.cpp > CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.i

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.s"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_main.cpp -o CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.s

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o.requires:

.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o.requires

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o.provides: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o.requires
	$(MAKE) -f modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/build.make modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o.provides.build
.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o.provides

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o.provides.build: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o


modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/flags.make
modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o: /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_pyramids.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/autodl-tmp/opencv/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o -c /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_pyramids.cpp

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.i"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_pyramids.cpp > CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.i

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.s"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_pyramids.cpp -o CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.s

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o.requires:

.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o.requires

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o.provides: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o.requires
	$(MAKE) -f modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/build.make modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o.provides.build
.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o.provides

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o.provides.build: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o


modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/flags.make
modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o: /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_remap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/autodl-tmp/opencv/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o -c /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_remap.cpp

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.i"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_remap.cpp > CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.i

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.s"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_remap.cpp -o CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.s

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o.requires:

.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o.requires

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o.provides: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o.requires
	$(MAKE) -f modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/build.make modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o.provides.build
.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o.provides

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o.provides.build: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o


modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/flags.make
modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o: /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_resize.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/autodl-tmp/opencv/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o -c /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_resize.cpp

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.i"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_resize.cpp > CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.i

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.s"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_resize.cpp -o CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.s

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o.requires:

.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o.requires

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o.provides: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o.requires
	$(MAKE) -f modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/build.make modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o.provides.build
.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o.provides

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o.provides.build: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o


modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/flags.make
modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o: /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_warp_affine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/autodl-tmp/opencv/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o -c /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_warp_affine.cpp

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.i"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_warp_affine.cpp > CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.i

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.s"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_warp_affine.cpp -o CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.s

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o.requires:

.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o.requires

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o.provides: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o.requires
	$(MAKE) -f modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/build.make modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o.provides.build
.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o.provides

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o.provides.build: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o


modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/flags.make
modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o: /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_warp_perspective.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/autodl-tmp/opencv/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o -c /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_warp_perspective.cpp

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.i"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_warp_perspective.cpp > CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.i

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.s"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping/test/test_warp_perspective.cpp -o CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.s

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o.requires:

.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o.requires

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o.provides: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o.requires
	$(MAKE) -f modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/build.make modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o.provides.build
.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o.provides

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o.provides.build: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o


# Object files for target opencv_test_cudawarping
opencv_test_cudawarping_OBJECTS = \
"CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o" \
"CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o" \
"CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o" \
"CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o" \
"CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o" \
"CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o"

# External object files for target opencv_test_cudawarping
opencv_test_cudawarping_EXTERNAL_OBJECTS =

bin/opencv_test_cudawarping: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o
bin/opencv_test_cudawarping: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o
bin/opencv_test_cudawarping: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o
bin/opencv_test_cudawarping: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o
bin/opencv_test_cudawarping: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o
bin/opencv_test_cudawarping: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o
bin/opencv_test_cudawarping: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/build.make
bin/opencv_test_cudawarping: lib/libopencv_ts.a
bin/opencv_test_cudawarping: lib/libopencv_cudawarping.so.4.5.0
bin/opencv_test_cudawarping: lib/libopencv_highgui.so.4.5.0
bin/opencv_test_cudawarping: lib/libopencv_videoio.so.4.5.0
bin/opencv_test_cudawarping: lib/libopencv_imgcodecs.so.4.5.0
bin/opencv_test_cudawarping: lib/libopencv_imgproc.so.4.5.0
bin/opencv_test_cudawarping: lib/libopencv_core.so.4.5.0
bin/opencv_test_cudawarping: lib/libopencv_cudev.so.4.5.0
bin/opencv_test_cudawarping: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/autodl-tmp/opencv/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable ../../bin/opencv_test_cudawarping"
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_test_cudawarping.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/build: bin/opencv_test_cudawarping

.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/build

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/requires: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_main.cpp.o.requires
modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/requires: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_pyramids.cpp.o.requires
modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/requires: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_remap.cpp.o.requires
modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/requires: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_resize.cpp.o.requires
modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/requires: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_affine.cpp.o.requires
modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/requires: modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/test/test_warp_perspective.cpp.o.requires

.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/requires

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/clean:
	cd /root/autodl-tmp/opencv/opencv/build/modules/cudawarping && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_cudawarping.dir/cmake_clean.cmake
.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/clean

modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/depend:
	cd /root/autodl-tmp/opencv/opencv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/autodl-tmp/opencv/opencv /root/autodl-tmp/opencv/opencv_contrib/modules/cudawarping /root/autodl-tmp/opencv/opencv/build /root/autodl-tmp/opencv/opencv/build/modules/cudawarping /root/autodl-tmp/opencv/opencv/build/modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/cudawarping/CMakeFiles/opencv_test_cudawarping.dir/depend
