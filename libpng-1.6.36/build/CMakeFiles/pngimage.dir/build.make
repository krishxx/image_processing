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
CMAKE_SOURCE_DIR = C:\antworks\libpng-1.6.36

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\antworks\libpng-1.6.36\build

# Include any dependencies generated for this target.
include CMakeFiles/pngimage.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pngimage.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pngimage.dir/flags.make

CMakeFiles/pngimage.dir/contrib/libtests/pngimage.c.obj: CMakeFiles/pngimage.dir/flags.make
CMakeFiles/pngimage.dir/contrib/libtests/pngimage.c.obj: CMakeFiles/pngimage.dir/includes_C.rsp
CMakeFiles/pngimage.dir/contrib/libtests/pngimage.c.obj: ../contrib/libtests/pngimage.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\antworks\libpng-1.6.36\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/pngimage.dir/contrib/libtests/pngimage.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\pngimage.dir\contrib\libtests\pngimage.c.obj   -c C:\antworks\libpng-1.6.36\contrib\libtests\pngimage.c

CMakeFiles/pngimage.dir/contrib/libtests/pngimage.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pngimage.dir/contrib/libtests/pngimage.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\antworks\libpng-1.6.36\contrib\libtests\pngimage.c > CMakeFiles\pngimage.dir\contrib\libtests\pngimage.c.i

CMakeFiles/pngimage.dir/contrib/libtests/pngimage.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pngimage.dir/contrib/libtests/pngimage.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\antworks\libpng-1.6.36\contrib\libtests\pngimage.c -o CMakeFiles\pngimage.dir\contrib\libtests\pngimage.c.s

# Object files for target pngimage
pngimage_OBJECTS = \
"CMakeFiles/pngimage.dir/contrib/libtests/pngimage.c.obj"

# External object files for target pngimage
pngimage_EXTERNAL_OBJECTS =

pngimage.exe: CMakeFiles/pngimage.dir/contrib/libtests/pngimage.c.obj
pngimage.exe: CMakeFiles/pngimage.dir/build.make
pngimage.exe: libpng16.dll.a
pngimage.exe: C:/Program\ Files\ (x86)/zlib/lib/libzlib.dll.a
pngimage.exe: CMakeFiles/pngimage.dir/linklibs.rsp
pngimage.exe: CMakeFiles/pngimage.dir/objects1.rsp
pngimage.exe: CMakeFiles/pngimage.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\antworks\libpng-1.6.36\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pngimage.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\pngimage.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pngimage.dir/build: pngimage.exe

.PHONY : CMakeFiles/pngimage.dir/build

CMakeFiles/pngimage.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\pngimage.dir\cmake_clean.cmake
.PHONY : CMakeFiles/pngimage.dir/clean

CMakeFiles/pngimage.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\antworks\libpng-1.6.36 C:\antworks\libpng-1.6.36 C:\antworks\libpng-1.6.36\build C:\antworks\libpng-1.6.36\build C:\antworks\libpng-1.6.36\build\CMakeFiles\pngimage.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pngimage.dir/depend

