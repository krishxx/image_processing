# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\antworks\tiff-4.0.10

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\antworks\tiff-4.0.10\build

# Include any dependencies generated for this target.
include tools/CMakeFiles/tiffsplit.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/tiffsplit.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/tiffsplit.dir/flags.make

tools/CMakeFiles/tiffsplit.dir/tiffsplit.c.obj: tools/CMakeFiles/tiffsplit.dir/flags.make
tools/CMakeFiles/tiffsplit.dir/tiffsplit.c.obj: tools/CMakeFiles/tiffsplit.dir/includes_C.rsp
tools/CMakeFiles/tiffsplit.dir/tiffsplit.c.obj: ../tools/tiffsplit.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tools/CMakeFiles/tiffsplit.dir/tiffsplit.c.obj"
	cd /d C:\antworks\tiff-4.0.10\build\tools && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\tiffsplit.dir\tiffsplit.c.obj   -c C:\antworks\tiff-4.0.10\tools\tiffsplit.c

tools/CMakeFiles/tiffsplit.dir/tiffsplit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tiffsplit.dir/tiffsplit.c.i"
	cd /d C:\antworks\tiff-4.0.10\build\tools && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\antworks\tiff-4.0.10\tools\tiffsplit.c > CMakeFiles\tiffsplit.dir\tiffsplit.c.i

tools/CMakeFiles/tiffsplit.dir/tiffsplit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tiffsplit.dir/tiffsplit.c.s"
	cd /d C:\antworks\tiff-4.0.10\build\tools && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\antworks\tiff-4.0.10\tools\tiffsplit.c -o CMakeFiles\tiffsplit.dir\tiffsplit.c.s

# Object files for target tiffsplit
tiffsplit_OBJECTS = \
"CMakeFiles/tiffsplit.dir/tiffsplit.c.obj"

# External object files for target tiffsplit
tiffsplit_EXTERNAL_OBJECTS =

tools/tiffsplit.exe: tools/CMakeFiles/tiffsplit.dir/tiffsplit.c.obj
tools/tiffsplit.exe: tools/CMakeFiles/tiffsplit.dir/build.make
tools/tiffsplit.exe: libtiff/libtiff.dll.a
tools/tiffsplit.exe: port/libport.a
tools/tiffsplit.exe: C:/Program\ Files\ (x86)/zlib/lib/libzlib.dll.a
tools/tiffsplit.exe: tools/CMakeFiles/tiffsplit.dir/linklibs.rsp
tools/tiffsplit.exe: tools/CMakeFiles/tiffsplit.dir/objects1.rsp
tools/tiffsplit.exe: tools/CMakeFiles/tiffsplit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable tiffsplit.exe"
	cd /d C:\antworks\tiff-4.0.10\build\tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\tiffsplit.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/tiffsplit.dir/build: tools/tiffsplit.exe

.PHONY : tools/CMakeFiles/tiffsplit.dir/build

tools/CMakeFiles/tiffsplit.dir/clean:
	cd /d C:\antworks\tiff-4.0.10\build\tools && $(CMAKE_COMMAND) -P CMakeFiles\tiffsplit.dir\cmake_clean.cmake
.PHONY : tools/CMakeFiles/tiffsplit.dir/clean

tools/CMakeFiles/tiffsplit.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\antworks\tiff-4.0.10 C:\antworks\tiff-4.0.10\tools C:\antworks\tiff-4.0.10\build C:\antworks\tiff-4.0.10\build\tools C:\antworks\tiff-4.0.10\build\tools\CMakeFiles\tiffsplit.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/tiffsplit.dir/depend

