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
include libtiff/CMakeFiles/tiffxx.dir/depend.make

# Include the progress variables for this target.
include libtiff/CMakeFiles/tiffxx.dir/progress.make

# Include the compile flags for this target's objects.
include libtiff/CMakeFiles/tiffxx.dir/flags.make

libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.obj: libtiff/CMakeFiles/tiffxx.dir/flags.make
libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.obj: libtiff/CMakeFiles/tiffxx.dir/includes_CXX.rsp
libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.obj: ../libtiff/tif_stream.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.obj"
	cd /d C:\antworks\tiff-4.0.10\build\libtiff && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\tiffxx.dir\tif_stream.cxx.obj -c C:\antworks\tiff-4.0.10\libtiff\tif_stream.cxx

libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tiffxx.dir/tif_stream.cxx.i"
	cd /d C:\antworks\tiff-4.0.10\build\libtiff && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\antworks\tiff-4.0.10\libtiff\tif_stream.cxx > CMakeFiles\tiffxx.dir\tif_stream.cxx.i

libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tiffxx.dir/tif_stream.cxx.s"
	cd /d C:\antworks\tiff-4.0.10\build\libtiff && C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\antworks\tiff-4.0.10\libtiff\tif_stream.cxx -o CMakeFiles\tiffxx.dir\tif_stream.cxx.s

# Object files for target tiffxx
tiffxx_OBJECTS = \
"CMakeFiles/tiffxx.dir/tif_stream.cxx.obj"

# External object files for target tiffxx
tiffxx_EXTERNAL_OBJECTS =

libtiff/libtiffxx.dll: libtiff/CMakeFiles/tiffxx.dir/tif_stream.cxx.obj
libtiff/libtiffxx.dll: libtiff/CMakeFiles/tiffxx.dir/build.make
libtiff/libtiffxx.dll: libtiff/libtiff.dll.a
libtiff/libtiffxx.dll: C:/Program\ Files\ (x86)/zlib/lib/libzlib.dll.a
libtiff/libtiffxx.dll: libtiff/CMakeFiles/tiffxx.dir/linklibs.rsp
libtiff/libtiffxx.dll: libtiff/CMakeFiles/tiffxx.dir/objects1.rsp
libtiff/libtiffxx.dll: libtiff/CMakeFiles/tiffxx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\antworks\tiff-4.0.10\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libtiffxx.dll"
	cd /d C:\antworks\tiff-4.0.10\build\libtiff && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\tiffxx.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libtiff/CMakeFiles/tiffxx.dir/build: libtiff/libtiffxx.dll

.PHONY : libtiff/CMakeFiles/tiffxx.dir/build

libtiff/CMakeFiles/tiffxx.dir/clean:
	cd /d C:\antworks\tiff-4.0.10\build\libtiff && $(CMAKE_COMMAND) -P CMakeFiles\tiffxx.dir\cmake_clean.cmake
.PHONY : libtiff/CMakeFiles/tiffxx.dir/clean

libtiff/CMakeFiles/tiffxx.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\antworks\tiff-4.0.10 C:\antworks\tiff-4.0.10\libtiff C:\antworks\tiff-4.0.10\build C:\antworks\tiff-4.0.10\build\libtiff C:\antworks\tiff-4.0.10\build\libtiff\CMakeFiles\tiffxx.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : libtiff/CMakeFiles/tiffxx.dir/depend
