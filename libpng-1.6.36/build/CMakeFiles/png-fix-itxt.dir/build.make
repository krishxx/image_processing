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
include CMakeFiles/png-fix-itxt.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/png-fix-itxt.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/png-fix-itxt.dir/flags.make

CMakeFiles/png-fix-itxt.dir/contrib/tools/png-fix-itxt.c.obj: CMakeFiles/png-fix-itxt.dir/flags.make
CMakeFiles/png-fix-itxt.dir/contrib/tools/png-fix-itxt.c.obj: CMakeFiles/png-fix-itxt.dir/includes_C.rsp
CMakeFiles/png-fix-itxt.dir/contrib/tools/png-fix-itxt.c.obj: ../contrib/tools/png-fix-itxt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\antworks\libpng-1.6.36\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/png-fix-itxt.dir/contrib/tools/png-fix-itxt.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\png-fix-itxt.dir\contrib\tools\png-fix-itxt.c.obj   -c C:\antworks\libpng-1.6.36\contrib\tools\png-fix-itxt.c

CMakeFiles/png-fix-itxt.dir/contrib/tools/png-fix-itxt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/png-fix-itxt.dir/contrib/tools/png-fix-itxt.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\antworks\libpng-1.6.36\contrib\tools\png-fix-itxt.c > CMakeFiles\png-fix-itxt.dir\contrib\tools\png-fix-itxt.c.i

CMakeFiles/png-fix-itxt.dir/contrib/tools/png-fix-itxt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/png-fix-itxt.dir/contrib/tools/png-fix-itxt.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\antworks\libpng-1.6.36\contrib\tools\png-fix-itxt.c -o CMakeFiles\png-fix-itxt.dir\contrib\tools\png-fix-itxt.c.s

# Object files for target png-fix-itxt
png__fix__itxt_OBJECTS = \
"CMakeFiles/png-fix-itxt.dir/contrib/tools/png-fix-itxt.c.obj"

# External object files for target png-fix-itxt
png__fix__itxt_EXTERNAL_OBJECTS =

png-fix-itxt.exe: CMakeFiles/png-fix-itxt.dir/contrib/tools/png-fix-itxt.c.obj
png-fix-itxt.exe: CMakeFiles/png-fix-itxt.dir/build.make
png-fix-itxt.exe: C:/Program\ Files\ (x86)/zlib/lib/libzlib.dll.a
png-fix-itxt.exe: CMakeFiles/png-fix-itxt.dir/linklibs.rsp
png-fix-itxt.exe: CMakeFiles/png-fix-itxt.dir/objects1.rsp
png-fix-itxt.exe: CMakeFiles/png-fix-itxt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\antworks\libpng-1.6.36\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable png-fix-itxt.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\png-fix-itxt.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/png-fix-itxt.dir/build: png-fix-itxt.exe

.PHONY : CMakeFiles/png-fix-itxt.dir/build

CMakeFiles/png-fix-itxt.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\png-fix-itxt.dir\cmake_clean.cmake
.PHONY : CMakeFiles/png-fix-itxt.dir/clean

CMakeFiles/png-fix-itxt.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\antworks\libpng-1.6.36 C:\antworks\libpng-1.6.36 C:\antworks\libpng-1.6.36\build C:\antworks\libpng-1.6.36\build C:\antworks\libpng-1.6.36\build\CMakeFiles\png-fix-itxt.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/png-fix-itxt.dir/depend

