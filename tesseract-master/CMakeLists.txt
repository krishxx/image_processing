#
# tesseract
#

###############################################################################
#
# cmake settings
#
###############################################################################

cmake_minimum_required(VERSION 2.8.11)

# In-source builds are disabled.
if (${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
    message(FATAL_ERROR
        "CMake generation is not possible within the source directory!"
        "\n Remove the CMakeCache.txt file and try again from another folder, e.g.:"
        "\n "
        "\n rm CMakeCache.txt"
        "\n mkdir build"
        "\n cd build"
        "\n cmake .."
    )
endif()

set(CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH};${CMAKE_SOURCE_DIR}/cmake")

set(EXECUTABLE_OUTPUT_PATH "${CMAKE_BINARY_DIR}/bin")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${EXECUTABLE_OUTPUT_PATH}")

# Use solution folders.
set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set_property(GLOBAL PROPERTY PREDEFINED_TARGETS_FOLDER "CMake Targets")

###############################################################################
#
# project settings
#
###############################################################################

project(tesseract C CXX)

set(VERSION_MAJOR 4)
set(VERSION_MINOR 0)
set(VERSION_PLAIN ${VERSION_MAJOR}.${VERSION_MINOR}.0-beta.1)

set(MINIMUM_LEPTONICA_VERSION 1.74)

if(NOT EXISTS ${PROJECT_SOURCE_DIR}/.cppan)
    if (NOT Leptonica_DIR AND NOT MSVC)
        find_package(PkgConfig REQUIRED)
        set(Leptonica "C:\\Program Files (x86)\\leptonica")
        #set((Leptonica FOUND 1)
        find_package(Leptonica)
        #pkg_check_modules(Leptonica REQUIRED lept>=${MINIMUM_LEPTONICA_VERSION})
        include_directories("C:\\Program Files (x86)\\leptonica\\include\\leptonica")
        #link_target_libraries("C:\\Program Files (x86)\\leptonica\\bin\\libleptonica-1.79.0.dll")
        link_directories("D:\\example\\leptonica\\bin")
    else()
        find_package(Leptonica ${MINIMUM_LEPTONICA_VERSION} REQUIRED CONFIG)
    endif()
else()
    if (STATIC)
        set(CPPAN_BUILD_SHARED_LIBS 0)
    else()
        set(CPPAN_BUILD_SHARED_LIBS 1)
    endif()
    add_subdirectory(.cppan)
endif()

find_package(OpenCL QUIET)

option(BUILD_TRAINING_TOOLS "Build training tools" ON)

###############################################################################
#
# compiler and linker
#
###############################################################################

set(LIBRARY_TYPE SHARED)
if (STATIC)
    set(LIBRARY_TYPE)
endif()

if (WIN32)
    if (MSVC)
        add_definitions(-D_CRT_SECURE_NO_WARNINGS)

        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /MP /openmp")
    endif()

    set(LIB_Ws2_32 Ws2_32)
endif()

if (CYGWIN)
    add_definitions(-D__CYGWIN__)
endif()

if (UNIX)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --std=c++11")

    set(LIB_pthread pthread)
endif()

###############################################################################
#
# configure
#
###############################################################################

set(AUTOCONFIG_SRC ${CMAKE_BINARY_DIR}/config_auto.h.in)
set(AUTOCONFIG ${CMAKE_BINARY_DIR}/config_auto.h)

include(Configure)

configure_file(${AUTOCONFIG_SRC} ${AUTOCONFIG} @ONLY)

set(INCLUDE_DIR "${CMAKE_INSTALL_PREFIX}/include" "${CMAKE_INSTALL_PREFIX}/include/tesseract")

configure_file(
    ${CMAKE_SOURCE_DIR}/cmake/templates/TesseractConfig-version.cmake.in
    ${CMAKE_BINARY_DIR}/TesseractConfig-version.cmake @ONLY)
configure_file(
    ${CMAKE_SOURCE_DIR}/cmake/templates/TesseractConfig.cmake.in
    ${CMAKE_BINARY_DIR}/TesseractConfig.cmake @ONLY)

###############################################################################
#
# build
#
###############################################################################

include(BuildFunctions)
include(SourceGroups)

add_definitions(-DHAVE_CONFIG_H)
add_definitions(-D_SILENCE_STDEXT_HASH_DEPRECATION_WARNINGS=1)
add_definitions(-DWINDLLNAME="libtesseract${VERSION_MAJOR}${VERSION_MINOR}.dll")

include_directories(${Leptonica_INCLUDE_DIRS})

include_directories(${CMAKE_BINARY_DIR})

include_directories(api)
include_directories(arch)
include_directories(ccmain)
include_directories(ccstruct)
include_directories(ccutil)
include_directories(classify)
include_directories(cutil)
include_directories(dict)
include_directories(lstm)
include_directories(opencl)
include_directories(textord)
include_directories(vs2010/port)
include_directories(viewer)
include_directories(wordrec)

########################################
# LIBRARY tesseract
########################################

string(SUBSTRING ${VERSION_MINOR} 0 1 VERSION_MINOR_0)
string(SUBSTRING ${VERSION_MINOR} 1 1 VERSION_MINOR_1)

file(GLOB tesseract_src
    arch/*.cpp
    ccmain/*.cpp
    ccstruct/*.cpp
    ccutil/*.cpp
    classify/*.cpp
    cutil/*.cpp
    dict/*.cpp
    lstm/*.cpp
    opencl/*.cpp
    textord/*.cpp
    viewer/*.cpp
    wordrec/*.cpp
)
file(GLOB tesseract_hdr
    api/*.h
    arch/*.h
    ccmain/*.h
    ccstruct/*.h
    ccutil/*.h
    classify/*.h
    cutil/*.h
    dict/*.h
    lstm/*.h
    opencl/*.h
    textord/*.h
    viewer/*.h
    wordrec/*.h
)
if (WIN32)
    file(GLOB tesseract_win32_src "vs2010/port/*.cpp")
    file(GLOB tesseract_win32_hdr "vs2010/port/*.h")
    set(tesseract_src ${tesseract_src} ${tesseract_win32_src})
    set(tesseract_hdr ${tesseract_hdr} ${tesseract_win32_hdr})
endif()

set(tesseract_src ${tesseract_src}
    api/baseapi.cpp
    api/capi.cpp
    api/renderer.cpp
    api/pdfrenderer.cpp
)

if (WIN32)
    if (MSVC)
        set_source_files_properties(
            ${CMAKE_CURRENT_SOURCE_DIR}/arch/dotproductsse.cpp
            PROPERTIES COMPILE_DEFINITIONS __SSE4_1__)
        set_source_files_properties(
            ${CMAKE_CURRENT_SOURCE_DIR}/arch/intsimdmatrixsse.cpp
            PROPERTIES COMPILE_DEFINITIONS __SSE4_1__)
        set_source_files_properties(
            ${CMAKE_CURRENT_SOURCE_DIR}/arch/dotproductavx.cpp
            PROPERTIES COMPILE_FLAGS "/arch:AVX")
        set_source_files_properties(
            ${CMAKE_CURRENT_SOURCE_DIR}/arch/intsimdmatrixavx2.cpp
            PROPERTIES COMPILE_FLAGS "/arch:AVX2")
    endif()
else()
    set_source_files_properties(
            ${CMAKE_CURRENT_SOURCE_DIR}/arch/dotproductsse.cpp
            PROPERTIES COMPILE_FLAGS "-msse4.1")
    set_source_files_properties(
            ${CMAKE_CURRENT_SOURCE_DIR}/arch/intsimdmatrixsse.cpp
            PROPERTIES COMPILE_FLAGS "-msse4.1")
    set_source_files_properties(
            ${CMAKE_CURRENT_SOURCE_DIR}/arch/dotproductavx.cpp
            PROPERTIES COMPILE_FLAGS "-mavx")
    set_source_files_properties(
            ${CMAKE_CURRENT_SOURCE_DIR}/arch/intsimdmatrixavx2.cpp
            PROPERTIES COMPILE_FLAGS "-mavx2")
endif()

add_library                     (libtesseract ${LIBRARY_TYPE} ${tesseract_src} ${tesseract_hdr})
if (NOT STATIC)
target_compile_definitions      (libtesseract
    PRIVATE -DTESS_EXPORTS
    INTERFACE -DTESS_IMPORTS
)
set_target_properties           (libtesseract PROPERTIES WINDOWS_EXPORT_ALL_SYMBOLS True)
endif()
target_link_libraries           (libtesseract ${LIB_Ws2_32} ${LIB_pthread})
set_target_properties           (libtesseract PROPERTIES VERSION ${VERSION_MAJOR}.${VERSION_MINOR_0}.${VERSION_MINOR_1})
set_target_properties           (libtesseract PROPERTIES SOVERSION ${VERSION_MAJOR}.${VERSION_MINOR_0}.${VERSION_MINOR_1})
if (WIN32)
set_target_properties           (libtesseract PROPERTIES OUTPUT_NAME tesseract${VERSION_MAJOR}${VERSION_MINOR})
set_target_properties           (libtesseract PROPERTIES DEBUG_OUTPUT_NAME tesseract${VERSION_MAJOR}${VERSION_MINOR}d)
else()
set_target_properties           (libtesseract PROPERTIES OUTPUT_NAME tesseract)
endif()

if (NOT CPPAN_BUILD)
    target_link_libraries       (libtesseract ${Leptonica_LIBRARIES})
    export(TARGETS libtesseract FILE ${CMAKE_BINARY_DIR}/TesseractTargets.cmake)
else()
    target_link_libraries       (libtesseract pvt.cppan.demo.danbloomberg.leptonica)
    file(WRITE ${CMAKE_BINARY_DIR}/TesseractTargets.cmake "include(${CMAKE_BINARY_DIR}/cppan.cmake)\n")
    export(TARGETS libtesseract APPEND FILE ${CMAKE_BINARY_DIR}/TesseractTargets.cmake)
endif()

########################################
# EXECUTABLE tesseractmain
########################################

set(tesseractmain_src
    api/tesseractmain.cpp
    vs2010/tesseract/resource.h
    vs2010/tesseract/tesseract.rc
)
add_executable                  (tesseract ${tesseractmain_src})
target_link_libraries           (tesseract libtesseract)

########################################

if (EXISTS ${PROJECT_SOURCE_DIR}/googletest/CMakeLists.txt)
    add_subdirectory(googletest)
    add_executable(tesseract_tests tests/tesseracttests.cpp)
    target_link_libraries(tesseract_tests gtest_main)
endif()

if (BUILD_TRAINING_TOOLS)
add_subdirectory(training)
endif()

get_target_property(tesseract_NAME libtesseract NAME)
get_target_property(tesseract_VERSION libtesseract VERSION)
get_target_property(tesseract_OUTPUT_NAME libtesseract OUTPUT_NAME)
configure_file(tesseract.pc.cmake ${CMAKE_CURRENT_BINARY_DIR}/tesseract.pc @ONLY)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/tesseract.pc DESTINATION lib/pkgconfig)
install(TARGETS tesseract RUNTIME DESTINATION bin LIBRARY DESTINATION lib ARCHIVE DESTINATION lib)
install(TARGETS libtesseract EXPORT TesseractTargets RUNTIME DESTINATION bin LIBRARY DESTINATION lib ARCHIVE DESTINATION lib)
install(EXPORT TesseractTargets DESTINATION cmake)
install(FILES
    ${CMAKE_BINARY_DIR}/TesseractConfig.cmake
    ${CMAKE_BINARY_DIR}/TesseractConfig-version.cmake
    DESTINATION cmake)

install(FILES
    # from api/makefile.am
    api/apitypes.h
    api/baseapi.h
    api/capi.h
    api/renderer.h

    #from arch/makefile.am
    arch/dotproductavx.h
    arch/dotproductsse.h
    arch/intsimdmatrix.h
    arch/intsimdmatrixavx2.h
    arch/intsimdmatrixsse.h
    arch/simddetect.h

    #from ccmain/makefile.am
    ccmain/thresholder.h
    ccmain/ltrresultiterator.h
    ccmain/pageiterator.h
    ccmain/resultiterator.h
    ccmain/osdetect.h

    #from ccstruct/makefile.am
    ccstruct/publictypes.h

    #from ccutil/makefile.am
    ccutil/basedir.h
    ccutil/errcode.h
    ccutil/fileerr.h
    ccutil/genericvector.h
    ccutil/helpers.h
    ccutil/host.h
    ccutil/memry.h
    ccutil/ndminx.h
    ccutil/params.h
    ccutil/ocrclass.h
    ccutil/platform.h
    ccutil/serialis.h
    ccutil/strngs.h
    ccutil/tesscallback.h
    ccutil/unichar.h
    ccutil/unicharcompress.h
    ccutil/unicharmap.h
    ccutil/unicharset.h
    ccutil/version.h

    #from lstm/makefile.am
    lstm/convolve.h
    lstm/ctc.h
    lstm/fullyconnected.h
    lstm/functions.h
    lstm/input.h
    lstm/lstm.h
    lstm/lstmrecognizer.h
    lstm/lstmtrainer.h
    lstm/maxpool.h
    lstm/networkbuilder.h
    lstm/network.h
    lstm/networkio.h
    lstm/networkscratch.h
    lstm/parallel.h
    lstm/plumbing.h
    lstm/recodebeam.h
    lstm/reconfig.h
    lstm/reversed.h
    lstm/series.h
    lstm/static_shape.h
    lstm/stridemap.h
    lstm/tfnetwork.h
    lstm/weightmatrix.h

    #${CMAKE_BINARY_DIR}/src/endianness.h
    DESTINATION include/tesseract)


###############################################################################
