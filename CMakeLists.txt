# usefull guide to cmake: https://www.youtube.com/playlist?list=PLK6MXr8gasrGmIiSuVQXpfFuE1uPT615s
cmake_minimum_required(VERSION 3.10)

# Configuration
project(CMake_template VERSION 1.0)	#set project name (is it useless???)
enable_language(CXX) 				#set the language as c++
set(CMAKE_CXX_STANDARD 11)			#project standard
# set(CMAKE_CXX_FLAGS "-O3")		#enable optimization lvl3 (windows does not know it)


# Create alias
include_directories(${PROJECT_SOURCE_DIR}/src/include)            #include the .hh folder, then each .cc will load its .hh
include_directories(${PROJECT_SOURCE_DIR}/externalLibs/c_printer/src)
file(GLOB source_files "${PROJECT_SOURCE_DIR}/src/*.cc")       	#include all the .cc files as source
file(GLOB exec_file "${PROJECT_SOURCE_DIR}/exec/ciao_mondo.cc")  	#include the main


# Requirements
# find_package(OpenCV REQUIRED)
# if(OpenCV)
# 	target_link_libraries( CMake_template ${OpenCV_LIBS} )
# else()
# 	#somthing else
# endif()

# Add Submodule 
# -> check out: https://git-scm.com/book/en/v2/Git-Tools-Submodules
# -> https://foonathan.net/2016/07/cmake-dependency-handling/
add_subdirectory(${PROJECT_SOURCE_DIR}/externalLibs/c_printer/)
# set(BlSt  BibliotecaStampante)
# add_library(${BlSt} STATIC ${source_files})


# Create the Static library
set(LIB  Biblioteca)						#set the name of the static library (.a) as projectLib.a into the build directory
add_library(${LIB} STATIC ${source_files})	#add all the .cc to static library previously defined

# Create the executable
set(EXEC executable)						#set the name of the executable
add_executable(${EXEC} ${exec_file})		#declare the executable with its file
target_link_libraries(${EXEC} ${LIB} CPrinter)		#add the library to the created executable	



# target_include_directories(${EXEC} PRIVATE src/include/)	#why this line???
