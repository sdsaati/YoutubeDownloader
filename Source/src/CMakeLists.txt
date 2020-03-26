add_executable("${appname}" WIN32
main.cpp
"${CMAKE_SOURCE_DIR}/include/main.hpp"
)

target_include_directories("${appname}"
PUBLIC "${PROJECT_BINARY_DIR}"
PUBLIC "${CMAKE_SOURCE_DIR}/include"
PUBLIC "${CMAKE_SOURCE_DIR}/sfml/include/SFML"
)

# sfml-main is only for Windows
target_link_libraries("${appname}"
    PUBLIC sfml-system
	PUBLIC sfml-window
	PUBLIC sfml-graphics
	PUBLIC sfml-audio
	PUBLIC sfml-network
)

# if we build the "install target", then it will install the appname in the given dest
install(TARGETS "${appname}" DESTINATION "${CMAKE_INSTALL_PREFIX}")
#install(TARGETS sfml-graphics DESTINATION "${CMAKE_INSTALL_PREFIX}")
