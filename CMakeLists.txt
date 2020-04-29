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


# Requirements
find_package(OpenCV REQUIRED)	#importing of openCV (it need to be installed on the machine)


# Add Submodule 
# -> check out: https://git-scm.com/book/en/v2/Git-Tools-Submodules
include_directories(${PROJECT_SOURCE_DIR}/externalLibs/c_printer/src)
add_subdirectory(${PROJECT_SOURCE_DIR}/externalLibs/c_printer/)


# Create the Static library
set(LIB Biblioteca)							#set the name of the static library (.a) as projectLib.a into the build directory
include_directories(${OpenCV_INCLUDE_DIRS})
add_library(${LIB} STATIC ${source_files})	#add all the .cc to static library previously defined
target_link_libraries(${LIB} ${OpenCV_LIBS})	


# Create the executables
file(GLOB main_helloWorld "${PROJECT_SOURCE_DIR}/exec/helloWorld.cc")  	#include the main
set(exec_helloWorld helloWorld)						#set the name of the executable
add_executable(${exec_helloWorld} ${main_helloWorld})			#declare the executable with its file
target_link_libraries(${exec_helloWorld} ${LIB} ${CPrinter_LIBS})	#add the library to the created executable	

file(GLOB main_imgDisplay   "${PROJECT_SOURCE_DIR}/exec/imgDisplay.cc")
set(exec_imgDisplay imgDisplay)	
add_executable(${exec_imgDisplay} ${main_imgDisplay} )
target_link_libraries( ${exec_imgDisplay} ${OpenCV_LIBS} )

file(GLOB main_imgDisplayV2   "${PROJECT_SOURCE_DIR}/exec/openCVexec.cc")
set(exec_imgDisplayV2 imgDisplayV2)	
add_executable(${exec_imgDisplayV2} ${main_imgDisplayV2} )
target_link_libraries( ${exec_imgDisplayV2} ${LIB} ${OpenCV_LIBS})

