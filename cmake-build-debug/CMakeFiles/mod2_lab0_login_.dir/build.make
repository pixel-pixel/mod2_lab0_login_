# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /snap/clion/100/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/100/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/andrew/CLionProjects/mod2_lab0(login)"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/andrew/CLionProjects/mod2_lab0(login)/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/mod2_lab0_login_.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mod2_lab0_login_.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mod2_lab0_login_.dir/flags.make

CMakeFiles/mod2_lab0_login_.dir/main.cpp.o: CMakeFiles/mod2_lab0_login_.dir/flags.make
CMakeFiles/mod2_lab0_login_.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/andrew/CLionProjects/mod2_lab0(login)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mod2_lab0_login_.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mod2_lab0_login_.dir/main.cpp.o -c "/home/andrew/CLionProjects/mod2_lab0(login)/main.cpp"

CMakeFiles/mod2_lab0_login_.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mod2_lab0_login_.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/andrew/CLionProjects/mod2_lab0(login)/main.cpp" > CMakeFiles/mod2_lab0_login_.dir/main.cpp.i

CMakeFiles/mod2_lab0_login_.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mod2_lab0_login_.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/andrew/CLionProjects/mod2_lab0(login)/main.cpp" -o CMakeFiles/mod2_lab0_login_.dir/main.cpp.s

CMakeFiles/mod2_lab0_login_.dir/authNZ.cpp.o: CMakeFiles/mod2_lab0_login_.dir/flags.make
CMakeFiles/mod2_lab0_login_.dir/authNZ.cpp.o: ../authNZ.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/andrew/CLionProjects/mod2_lab0(login)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/mod2_lab0_login_.dir/authNZ.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mod2_lab0_login_.dir/authNZ.cpp.o -c "/home/andrew/CLionProjects/mod2_lab0(login)/authNZ.cpp"

CMakeFiles/mod2_lab0_login_.dir/authNZ.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mod2_lab0_login_.dir/authNZ.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/andrew/CLionProjects/mod2_lab0(login)/authNZ.cpp" > CMakeFiles/mod2_lab0_login_.dir/authNZ.cpp.i

CMakeFiles/mod2_lab0_login_.dir/authNZ.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mod2_lab0_login_.dir/authNZ.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/andrew/CLionProjects/mod2_lab0(login)/authNZ.cpp" -o CMakeFiles/mod2_lab0_login_.dir/authNZ.cpp.s

# Object files for target mod2_lab0_login_
mod2_lab0_login__OBJECTS = \
"CMakeFiles/mod2_lab0_login_.dir/main.cpp.o" \
"CMakeFiles/mod2_lab0_login_.dir/authNZ.cpp.o"

# External object files for target mod2_lab0_login_
mod2_lab0_login__EXTERNAL_OBJECTS =

mod2_lab0_login_: CMakeFiles/mod2_lab0_login_.dir/main.cpp.o
mod2_lab0_login_: CMakeFiles/mod2_lab0_login_.dir/authNZ.cpp.o
mod2_lab0_login_: CMakeFiles/mod2_lab0_login_.dir/build.make
mod2_lab0_login_: CMakeFiles/mod2_lab0_login_.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/andrew/CLionProjects/mod2_lab0(login)/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable mod2_lab0_login_"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mod2_lab0_login_.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mod2_lab0_login_.dir/build: mod2_lab0_login_

.PHONY : CMakeFiles/mod2_lab0_login_.dir/build

CMakeFiles/mod2_lab0_login_.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mod2_lab0_login_.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mod2_lab0_login_.dir/clean

CMakeFiles/mod2_lab0_login_.dir/depend:
	cd "/home/andrew/CLionProjects/mod2_lab0(login)/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/andrew/CLionProjects/mod2_lab0(login)" "/home/andrew/CLionProjects/mod2_lab0(login)" "/home/andrew/CLionProjects/mod2_lab0(login)/cmake-build-debug" "/home/andrew/CLionProjects/mod2_lab0(login)/cmake-build-debug" "/home/andrew/CLionProjects/mod2_lab0(login)/cmake-build-debug/CMakeFiles/mod2_lab0_login_.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/mod2_lab0_login_.dir/depend
