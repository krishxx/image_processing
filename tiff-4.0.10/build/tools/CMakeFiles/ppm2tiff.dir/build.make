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
include tools/CMakeFiles/ppm2tiff.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/ppm2tiff.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/ppm2tiff.dir/flags.make

tools/CMakeFiles/ppm2tiff.dir/ppm2tiff.c.obj: tools/CMakeFiles/ppm2tiff.dir/flags.make
tools/CMakeFiles/ppm2tiff.dir/ppm2tiff.c.obj: tools/CMakeFiles/ppm2tiff.dir/includes_C.rsp
tools/CMakeFiles/ppm2tiff.dir/ppm2tiff.c.obj: ../tools/ppm2tiff.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tools/CMakeFiles/ppm2tiff.dir/ppm2tiff.c.obj"
	cd /d C:\antworks\tiff-4.0.10\build\tools && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\ppm2tiff.dir\ppm2tiff.c.obj   -c C:\antworks\tiff-4.0.10\tools\ppm2tiff.c

tools/CMakeFiles/ppm2tiff.dir/ppm2tiff.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ppm2tiff.dir/ppm2tiff.c.i"
	cd /d C:\antworks\tiff-4.0.10\build\tools && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\antworks\tiff-4.0.10\tools\ppm2tiff.c > CMakeFiles\ppm2tiff.dir\ppm2tiff.c.i

tools/CMakeFiles/ppm2tiff.dir/ppm2tiff.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ppm2tiff.dir/ppm2tiff.c.s"
	cd /d C:\antworks\tiff-4.0.10\build\tools && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\antworks\tiff-4.0.10\tools\ppm2tiff.c -o CMakeFiles\ppm2tiff.dir\ppm2tiff.c.s

# Object files for target ppm2tiff
ppm2tiff_OBJECTS = \
"CMakeFiles/ppm2tiff.dir/ppm2tiff.c.obj"

# External object files for target ppm2tiff
ppm2tiff_EXTERNAL_OBJECTS =

tools/ppm2tiff.exe: tools/CMakeFiles/ppm2tiff.dir/ppm2tiff.c.obj
tools/ppm2tiff.exe: tools/CMakeFiles/ppm2tiff.dir/build.make
tools/ppm2tiff.exe: libtiff/libtiff.dll.a
tools/ppm2tiff.exe: port/libport.a
tools/ppm2tiff.exe: C:/Program\ Files\ (x86)/zlib/lib/libzlib.dll.a
tools/ppm2tiff.exe: tools/CMakeFiles/ppm2tiff.dir/linklibs.rsp
tools/ppm2tiff.exe: tools/CMakeFiles/ppm2tiff.dir/objects1.rsp
tools/ppm2tiff.exe: tools/CMakeFiles/ppm2tiff.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ppm2tiff.exe"
	cd /d C:\antworks\tiff-4.0.10\build\tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ppm2tiff.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/ppm2tiff.dir/build: tools/ppm2tiff.exe

.PHONY : tools/CMakeFiles/ppm2tiff.dir/build

tools/CMakeFiles/ppm2tiff.dir/clean:
	cd /d C:\antworks\tiff-4.0.10\build\tools && $(CMAKE_COMMAND) -P CMakeFiles\ppm2tiff.dir\cmake_clean.cmake
.PHONY : tools/CMakeFiles/ppm2tiff.dir/clean

tools/CMakeFiles/ppm2tiff.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\antworks\tiff-4.0.10 C:\antworks\tiff-4.0.10\tools C:\antworks\tiff-4.0.10\build C:\antworks\tiff-4.0.10\build\tools C:\antworks\tiff-4.0.10\build\tools\CMakeFiles\ppm2tiff.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/ppm2tiff.dir/depend

