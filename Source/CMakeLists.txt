cmake_minimum_required(VERSION 3.16)

# all the things in cmake language are string.
project("YoutubeDownloader" VERSION 1.0 LANGUAGES CXX)

# this is a the name of our application that can be set via cmake-gui
set(appname "ydl" CACHE STRING "the name of the application that is used as a target")
set(CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/../Install" CACHE STRING "" FORCE)


# include and load general modules
include("${CMAKE_SOURCE_DIR}/cmake/compilers_specifics.cmake")
include("${CMAKE_SOURCE_DIR}/cmake/sfml.cmake")

# Hello from cmake
message(STATUS "CMake Started")

add_subdirectory(src)
