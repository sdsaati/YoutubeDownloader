# we read and run the CMakeLists.txt in the sfml folder
# variables in there have new scope but target commnads
# are visible here!!
# add_subdirectory("${CMAKE_SOURCE_DIR}/sfml")

# if we want to link smfl statically or dynamically
set(SFML_STATIC_LIBRARIES TRUE)

# I'm setting this on cmake cache
set(SFML_DIR "${CMAKE_SOURCE_DIR}/sfml/lib/cmake/SFML")

find_package(SFML 2.5.1 COMPONENTS system window graphics audio network REQUIRED)


