# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wael/project1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wael/project1/build

# Include any dependencies generated for this target.
include CMakeFiles/cut.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cut.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cut.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cut.dir/flags.make

CMakeFiles/cut.dir/src2/work.cpp.o: CMakeFiles/cut.dir/flags.make
CMakeFiles/cut.dir/src2/work.cpp.o: ../src2/work.cpp
CMakeFiles/cut.dir/src2/work.cpp.o: CMakeFiles/cut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wael/project1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cut.dir/src2/work.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cut.dir/src2/work.cpp.o -MF CMakeFiles/cut.dir/src2/work.cpp.o.d -o CMakeFiles/cut.dir/src2/work.cpp.o -c /home/wael/project1/src2/work.cpp

CMakeFiles/cut.dir/src2/work.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cut.dir/src2/work.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wael/project1/src2/work.cpp > CMakeFiles/cut.dir/src2/work.cpp.i

CMakeFiles/cut.dir/src2/work.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cut.dir/src2/work.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wael/project1/src2/work.cpp -o CMakeFiles/cut.dir/src2/work.cpp.s

CMakeFiles/cut.dir/src/Elephant.cpp.o: CMakeFiles/cut.dir/flags.make
CMakeFiles/cut.dir/src/Elephant.cpp.o: ../src/Elephant.cpp
CMakeFiles/cut.dir/src/Elephant.cpp.o: CMakeFiles/cut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wael/project1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cut.dir/src/Elephant.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cut.dir/src/Elephant.cpp.o -MF CMakeFiles/cut.dir/src/Elephant.cpp.o.d -o CMakeFiles/cut.dir/src/Elephant.cpp.o -c /home/wael/project1/src/Elephant.cpp

CMakeFiles/cut.dir/src/Elephant.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cut.dir/src/Elephant.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wael/project1/src/Elephant.cpp > CMakeFiles/cut.dir/src/Elephant.cpp.i

CMakeFiles/cut.dir/src/Elephant.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cut.dir/src/Elephant.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wael/project1/src/Elephant.cpp -o CMakeFiles/cut.dir/src/Elephant.cpp.s

CMakeFiles/cut.dir/src/Lion.cpp.o: CMakeFiles/cut.dir/flags.make
CMakeFiles/cut.dir/src/Lion.cpp.o: ../src/Lion.cpp
CMakeFiles/cut.dir/src/Lion.cpp.o: CMakeFiles/cut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wael/project1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cut.dir/src/Lion.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cut.dir/src/Lion.cpp.o -MF CMakeFiles/cut.dir/src/Lion.cpp.o.d -o CMakeFiles/cut.dir/src/Lion.cpp.o -c /home/wael/project1/src/Lion.cpp

CMakeFiles/cut.dir/src/Lion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cut.dir/src/Lion.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wael/project1/src/Lion.cpp > CMakeFiles/cut.dir/src/Lion.cpp.i

CMakeFiles/cut.dir/src/Lion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cut.dir/src/Lion.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wael/project1/src/Lion.cpp -o CMakeFiles/cut.dir/src/Lion.cpp.s

CMakeFiles/cut.dir/src/Penguin.cpp.o: CMakeFiles/cut.dir/flags.make
CMakeFiles/cut.dir/src/Penguin.cpp.o: ../src/Penguin.cpp
CMakeFiles/cut.dir/src/Penguin.cpp.o: CMakeFiles/cut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wael/project1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/cut.dir/src/Penguin.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cut.dir/src/Penguin.cpp.o -MF CMakeFiles/cut.dir/src/Penguin.cpp.o.d -o CMakeFiles/cut.dir/src/Penguin.cpp.o -c /home/wael/project1/src/Penguin.cpp

CMakeFiles/cut.dir/src/Penguin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cut.dir/src/Penguin.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wael/project1/src/Penguin.cpp > CMakeFiles/cut.dir/src/Penguin.cpp.i

CMakeFiles/cut.dir/src/Penguin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cut.dir/src/Penguin.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wael/project1/src/Penguin.cpp -o CMakeFiles/cut.dir/src/Penguin.cpp.s

CMakeFiles/cut.dir/src/zoo.cpp.o: CMakeFiles/cut.dir/flags.make
CMakeFiles/cut.dir/src/zoo.cpp.o: ../src/zoo.cpp
CMakeFiles/cut.dir/src/zoo.cpp.o: CMakeFiles/cut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wael/project1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/cut.dir/src/zoo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cut.dir/src/zoo.cpp.o -MF CMakeFiles/cut.dir/src/zoo.cpp.o.d -o CMakeFiles/cut.dir/src/zoo.cpp.o -c /home/wael/project1/src/zoo.cpp

CMakeFiles/cut.dir/src/zoo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cut.dir/src/zoo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wael/project1/src/zoo.cpp > CMakeFiles/cut.dir/src/zoo.cpp.i

CMakeFiles/cut.dir/src/zoo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cut.dir/src/zoo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wael/project1/src/zoo.cpp -o CMakeFiles/cut.dir/src/zoo.cpp.s

# Object files for target cut
cut_OBJECTS = \
"CMakeFiles/cut.dir/src2/work.cpp.o" \
"CMakeFiles/cut.dir/src/Elephant.cpp.o" \
"CMakeFiles/cut.dir/src/Lion.cpp.o" \
"CMakeFiles/cut.dir/src/Penguin.cpp.o" \
"CMakeFiles/cut.dir/src/zoo.cpp.o"

# External object files for target cut
cut_EXTERNAL_OBJECTS =

cut: CMakeFiles/cut.dir/src2/work.cpp.o
cut: CMakeFiles/cut.dir/src/Elephant.cpp.o
cut: CMakeFiles/cut.dir/src/Lion.cpp.o
cut: CMakeFiles/cut.dir/src/Penguin.cpp.o
cut: CMakeFiles/cut.dir/src/zoo.cpp.o
cut: CMakeFiles/cut.dir/build.make
cut: CMakeFiles/cut.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wael/project1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable cut"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cut.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cut.dir/build: cut
.PHONY : CMakeFiles/cut.dir/build

CMakeFiles/cut.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cut.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cut.dir/clean

CMakeFiles/cut.dir/depend:
	cd /home/wael/project1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wael/project1 /home/wael/project1 /home/wael/project1/build /home/wael/project1/build /home/wael/project1/build/CMakeFiles/cut.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cut.dir/depend
