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
include test/CMakeFiles/strip_rw.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/strip_rw.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/strip_rw.dir/flags.make

test/CMakeFiles/strip_rw.dir/strip_rw.c.obj: test/CMakeFiles/strip_rw.dir/flags.make
test/CMakeFiles/strip_rw.dir/strip_rw.c.obj: test/CMakeFiles/strip_rw.dir/includes_C.rsp
test/CMakeFiles/strip_rw.dir/strip_rw.c.obj: ../test/strip_rw.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/strip_rw.dir/strip_rw.c.obj"
	cd /d C:\antworks\tiff-4.0.10\build\test && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\strip_rw.dir\strip_rw.c.obj   -c C:\antworks\tiff-4.0.10\test\strip_rw.c

test/CMakeFiles/strip_rw.dir/strip_rw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/strip_rw.dir/strip_rw.c.i"
	cd /d C:\antworks\tiff-4.0.10\build\test && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\antworks\tiff-4.0.10\test\strip_rw.c > CMakeFiles\strip_rw.dir\strip_rw.c.i

test/CMakeFiles/strip_rw.dir/strip_rw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/strip_rw.dir/strip_rw.c.s"
	cd /d C:\antworks\tiff-4.0.10\build\test && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\antworks\tiff-4.0.10\test\strip_rw.c -o CMakeFiles\strip_rw.dir\strip_rw.c.s

test/CMakeFiles/strip_rw.dir/strip.c.obj: test/CMakeFiles/strip_rw.dir/flags.make
test/CMakeFiles/strip_rw.dir/strip.c.obj: test/CMakeFiles/strip_rw.dir/includes_C.rsp
test/CMakeFiles/strip_rw.dir/strip.c.obj: ../test/strip.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object test/CMakeFiles/strip_rw.dir/strip.c.obj"
	cd /d C:\antworks\tiff-4.0.10\build\test && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\strip_rw.dir\strip.c.obj   -c C:\antworks\tiff-4.0.10\test\strip.c

test/CMakeFiles/strip_rw.dir/strip.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/strip_rw.dir/strip.c.i"
	cd /d C:\antworks\tiff-4.0.10\build\test && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\antworks\tiff-4.0.10\test\strip.c > CMakeFiles\strip_rw.dir\strip.c.i

test/CMakeFiles/strip_rw.dir/strip.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/strip_rw.dir/strip.c.s"
	cd /d C:\antworks\tiff-4.0.10\build\test && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\antworks\tiff-4.0.10\test\strip.c -o CMakeFiles\strip_rw.dir\strip.c.s

test/CMakeFiles/strip_rw.dir/test_arrays.c.obj: test/CMakeFiles/strip_rw.dir/flags.make
test/CMakeFiles/strip_rw.dir/test_arrays.c.obj: test/CMakeFiles/strip_rw.dir/includes_C.rsp
test/CMakeFiles/strip_rw.dir/test_arrays.c.obj: ../test/test_arrays.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object test/CMakeFiles/strip_rw.dir/test_arrays.c.obj"
	cd /d C:\antworks\tiff-4.0.10\build\test && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\strip_rw.dir\test_arrays.c.obj   -c C:\antworks\tiff-4.0.10\test\test_arrays.c

test/CMakeFiles/strip_rw.dir/test_arrays.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/strip_rw.dir/test_arrays.c.i"
	cd /d C:\antworks\tiff-4.0.10\build\test && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\antworks\tiff-4.0.10\test\test_arrays.c > CMakeFiles\strip_rw.dir\test_arrays.c.i

test/CMakeFiles/strip_rw.dir/test_arrays.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/strip_rw.dir/test_arrays.c.s"
	cd /d C:\antworks\tiff-4.0.10\build\test && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\antworks\tiff-4.0.10\test\test_arrays.c -o CMakeFiles\strip_rw.dir\test_arrays.c.s

# Object files for target strip_rw
strip_rw_OBJECTS = \
"CMakeFiles/strip_rw.dir/strip_rw.c.obj" \
"CMakeFiles/strip_rw.dir/strip.c.obj" \
"CMakeFiles/strip_rw.dir/test_arrays.c.obj"

# External object files for target strip_rw
strip_rw_EXTERNAL_OBJECTS =

test/strip_rw.exe: test/CMakeFiles/strip_rw.dir/strip_rw.c.obj
test/strip_rw.exe: test/CMakeFiles/strip_rw.dir/strip.c.obj
test/strip_rw.exe: test/CMakeFiles/strip_rw.dir/test_arrays.c.obj
test/strip_rw.exe: test/CMakeFiles/strip_rw.dir/build.make
test/strip_rw.exe: libtiff/libtiff.dll.a
test/strip_rw.exe: port/libport.a
test/strip_rw.exe: C:/Program\ Files\ (x86)/zlib/lib/libzlib.dll.a
test/strip_rw.exe: test/CMakeFiles/strip_rw.dir/linklibs.rsp
test/strip_rw.exe: test/CMakeFiles/strip_rw.dir/objects1.rsp
test/strip_rw.exe: test/CMakeFiles/strip_rw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable strip_rw.exe"
	cd /d C:\antworks\tiff-4.0.10\build\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\strip_rw.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/strip_rw.dir/build: test/strip_rw.exe

.PHONY : test/CMakeFiles/strip_rw.dir/build

test/CMakeFiles/strip_rw.dir/clean:
	cd /d C:\antworks\tiff-4.0.10\build\test && $(CMAKE_COMMAND) -P CMakeFiles\strip_rw.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/strip_rw.dir/clean

test/CMakeFiles/strip_rw.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\antworks\tiff-4.0.10 C:\antworks\tiff-4.0.10\test C:\antworks\tiff-4.0.10\build C:\antworks\tiff-4.0.10\build\test C:\antworks\tiff-4.0.10\build\test\CMakeFiles\strip_rw.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/strip_rw.dir/depend

