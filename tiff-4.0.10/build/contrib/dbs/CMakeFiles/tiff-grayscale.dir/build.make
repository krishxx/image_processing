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
include contrib/dbs/CMakeFiles/tiff-grayscale.dir/depend.make

# Include the progress variables for this target.
include contrib/dbs/CMakeFiles/tiff-grayscale.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/dbs/CMakeFiles/tiff-grayscale.dir/flags.make

contrib/dbs/CMakeFiles/tiff-grayscale.dir/tiff-grayscale.c.obj: contrib/dbs/CMakeFiles/tiff-grayscale.dir/flags.make
contrib/dbs/CMakeFiles/tiff-grayscale.dir/tiff-grayscale.c.obj: contrib/dbs/CMakeFiles/tiff-grayscale.dir/includes_C.rsp
contrib/dbs/CMakeFiles/tiff-grayscale.dir/tiff-grayscale.c.obj: ../contrib/dbs/tiff-grayscale.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object contrib/dbs/CMakeFiles/tiff-grayscale.dir/tiff-grayscale.c.obj"
	cd /d C:\antworks\tiff-4.0.10\build\contrib\dbs && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\tiff-grayscale.dir\tiff-grayscale.c.obj   -c C:\antworks\tiff-4.0.10\contrib\dbs\tiff-grayscale.c

contrib/dbs/CMakeFiles/tiff-grayscale.dir/tiff-grayscale.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tiff-grayscale.dir/tiff-grayscale.c.i"
	cd /d C:\antworks\tiff-4.0.10\build\contrib\dbs && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\antworks\tiff-4.0.10\contrib\dbs\tiff-grayscale.c > CMakeFiles\tiff-grayscale.dir\tiff-grayscale.c.i

contrib/dbs/CMakeFiles/tiff-grayscale.dir/tiff-grayscale.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tiff-grayscale.dir/tiff-grayscale.c.s"
	cd /d C:\antworks\tiff-4.0.10\build\contrib\dbs && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\antworks\tiff-4.0.10\contrib\dbs\tiff-grayscale.c -o CMakeFiles\tiff-grayscale.dir\tiff-grayscale.c.s

# Object files for target tiff-grayscale
tiff__grayscale_OBJECTS = \
"CMakeFiles/tiff-grayscale.dir/tiff-grayscale.c.obj"

# External object files for target tiff-grayscale
tiff__grayscale_EXTERNAL_OBJECTS =

contrib/dbs/tiff-grayscale.exe: contrib/dbs/CMakeFiles/tiff-grayscale.dir/tiff-grayscale.c.obj
contrib/dbs/tiff-grayscale.exe: contrib/dbs/CMakeFiles/tiff-grayscale.dir/build.make
contrib/dbs/tiff-grayscale.exe: libtiff/libtiff.dll.a
contrib/dbs/tiff-grayscale.exe: port/libport.a
contrib/dbs/tiff-grayscale.exe: C:/Program\ Files\ (x86)/zlib/lib/libzlib.dll.a
contrib/dbs/tiff-grayscale.exe: contrib/dbs/CMakeFiles/tiff-grayscale.dir/linklibs.rsp
contrib/dbs/tiff-grayscale.exe: contrib/dbs/CMakeFiles/tiff-grayscale.dir/objects1.rsp
contrib/dbs/tiff-grayscale.exe: contrib/dbs/CMakeFiles/tiff-grayscale.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable tiff-grayscale.exe"
	cd /d C:\antworks\tiff-4.0.10\build\contrib\dbs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\tiff-grayscale.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/dbs/CMakeFiles/tiff-grayscale.dir/build: contrib/dbs/tiff-grayscale.exe

.PHONY : contrib/dbs/CMakeFiles/tiff-grayscale.dir/build

contrib/dbs/CMakeFiles/tiff-grayscale.dir/clean:
	cd /d C:\antworks\tiff-4.0.10\build\contrib\dbs && $(CMAKE_COMMAND) -P CMakeFiles\tiff-grayscale.dir\cmake_clean.cmake
.PHONY : contrib/dbs/CMakeFiles/tiff-grayscale.dir/clean

contrib/dbs/CMakeFiles/tiff-grayscale.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\antworks\tiff-4.0.10 C:\antworks\tiff-4.0.10\contrib\dbs C:\antworks\tiff-4.0.10\build C:\antworks\tiff-4.0.10\build\contrib\dbs C:\antworks\tiff-4.0.10\build\contrib\dbs\CMakeFiles\tiff-grayscale.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/dbs/CMakeFiles/tiff-grayscale.dir/depend

