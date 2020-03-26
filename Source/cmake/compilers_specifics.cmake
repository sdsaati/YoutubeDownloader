
set(BUILD_SHARED_LIBS YES CACHE BOOL "Should it compile libs dynamically?")
# set(CMAKE_BUILD_TYPE "Release" CACHE STRING "what kind of build type do you like?")
# specify the C++ standard
#target_compile_features("${appname}" PRIVATE cxx_std_17)
set(CMAKE_CXX_STANDARD 17)

option(CMAKE_CXX_STANDARD_REQUIRED "" ON)

set(CMAKE_CODEBLOCKS_EXECUTABLE "${CMAKE_BINARY_DIR}/src/${appname}" CACHE STRING "" FORCE)
set(CMAKE_ECLIPSE_EXECUTABLE "${CMAKE_BINARY_DIR}/src/${appname}" CACHE STRING "" FORCE)

