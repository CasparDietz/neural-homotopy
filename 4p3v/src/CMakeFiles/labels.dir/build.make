# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /usr/local/lib/python3.9/site-packages/cmake/data/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /usr/local/lib/python3.9/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/caspar/IACV/learning_minimal-main custom/4p3v"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/caspar/IACV/learning_minimal-main custom/4p3v"

# Include any dependencies generated for this target.
include src/CMakeFiles/labels.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/labels.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/labels.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/labels.dir/flags.make

src/CMakeFiles/labels.dir/labels.cxx.o: src/CMakeFiles/labels.dir/flags.make
src/CMakeFiles/labels.dir/labels.cxx.o: src/labels.cxx
src/CMakeFiles/labels.dir/labels.cxx.o: src/CMakeFiles/labels.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/caspar/IACV/learning_minimal-main custom/4p3v/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/labels.dir/labels.cxx.o"
	cd "/Users/caspar/IACV/learning_minimal-main custom/4p3v/src" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/labels.dir/labels.cxx.o -MF CMakeFiles/labels.dir/labels.cxx.o.d -o CMakeFiles/labels.dir/labels.cxx.o -c "/Users/caspar/IACV/learning_minimal-main custom/4p3v/src/labels.cxx"

src/CMakeFiles/labels.dir/labels.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/labels.dir/labels.cxx.i"
	cd "/Users/caspar/IACV/learning_minimal-main custom/4p3v/src" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/caspar/IACV/learning_minimal-main custom/4p3v/src/labels.cxx" > CMakeFiles/labels.dir/labels.cxx.i

src/CMakeFiles/labels.dir/labels.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/labels.dir/labels.cxx.s"
	cd "/Users/caspar/IACV/learning_minimal-main custom/4p3v/src" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/caspar/IACV/learning_minimal-main custom/4p3v/src/labels.cxx" -o CMakeFiles/labels.dir/labels.cxx.s

# Object files for target labels
labels_OBJECTS = \
"CMakeFiles/labels.dir/labels.cxx.o"

# External object files for target labels
labels_EXTERNAL_OBJECTS =

bin/labels: src/CMakeFiles/labels.dir/labels.cxx.o
bin/labels: src/CMakeFiles/labels.dir/build.make
bin/labels: src/CMakeFiles/labels.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/caspar/IACV/learning_minimal-main custom/4p3v/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/labels"
	cd "/Users/caspar/IACV/learning_minimal-main custom/4p3v/src" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/labels.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/labels.dir/build: bin/labels
.PHONY : src/CMakeFiles/labels.dir/build

src/CMakeFiles/labels.dir/clean:
	cd "/Users/caspar/IACV/learning_minimal-main custom/4p3v/src" && $(CMAKE_COMMAND) -P CMakeFiles/labels.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/labels.dir/clean

src/CMakeFiles/labels.dir/depend:
	cd "/Users/caspar/IACV/learning_minimal-main custom/4p3v" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/caspar/IACV/learning_minimal-main custom/4p3v" "/Users/caspar/IACV/learning_minimal-main custom/4p3v/src" "/Users/caspar/IACV/learning_minimal-main custom/4p3v" "/Users/caspar/IACV/learning_minimal-main custom/4p3v/src" "/Users/caspar/IACV/learning_minimal-main custom/4p3v/src/CMakeFiles/labels.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : src/CMakeFiles/labels.dir/depend
