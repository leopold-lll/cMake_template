# usefull guide to cmake: https://www.youtube.com/playlist?list=PLK6MXr8gasrGmIiSuVQXpfFuE1uPT615s
cmake_minimum_required(VERSION 3.10)

# Configuration
project(CMake_template VERSION 1.2)	#set project name (useful for knowledge)
enable_language(CXX) 				#set the language as c++
set(CMAKE_CXX_STANDARD 11)			#project standard
if (UNIX)
    set(CMAKE_CXX_FLAGS "-O3")		#linux optimization
endif (UNIX)
if (WIN32)
    #windows optimization
endif (WIN32)


# Create alias
include_directories(${PROJECT_SOURCE_DIR}/src/include)            	#include the .hh folder, then each .cc will load its .hh
file(GLOB source_files "${PROJECT_SOURCE_DIR}/src/*.cc")       		#include all the .cc files as source
file(GLOB exec_main "${PROJECT_SOURCE_DIR}/exec/ciao_mondo.cc")  	#include the main
file(GLOB exec_CV   "${PROJECT_SOURCE_DIR}/exec/imgDisplay.cc")


# Requirements
find_package(OpenCV REQUIRED)	#importing of openCV (it need to be installed on the machine)

# Add Submodule 
# -> check out: https://git-scm.com/book/en/v2/Git-Tools-Submodules
include_directories(${PROJECT_SOURCE_DIR}/externalLibs/c_printer/src)
add_subdirectory(${PROJECT_SOURCE_DIR}/externalLibs/c_printer/)


# Create the Static library
set(LIB  Biblioteca)						#set the name of the static library (.a) as projectLib.a into the build directory
add_library(${LIB} STATIC ${source_files})	#add all the .cc to static library previously defined


# Create the executables
set(EXEC main_executable)						#set the name of the executable
add_executable(${EXEC} ${exec_main})			#declare the executable with its file
target_link_libraries(${EXEC} ${LIB} ${CPrinter_LIBS})	#add the library to the created executable	

set(EXEC_CV cv_executable)	
add_executable(${EXEC_CV} ${exec_CV} )
target_link_libraries( ${EXEC_CV} ${OpenCV_LIBS} )


