cmake_minimum_required(VERSION 3.10)

# Configuration
project(CMake_template)			#set project name (is it useless???)
enable_language(CXX) 			#set the language as c++
set(CMAKE_CXX_STANDARD 11)		#project standard
# set(CMAKE_CXX_FLAGS "-O3")	#enable optimization lvl3 (windows does not know it)

# Requirements
# find_package(OpenCV REQUIRED)
# target_link_libraries( CMake_template ${OpenCV_LIBS} )


# Create alias
include_directories(src/include)            #include the .hh folder, then each .cc will load its .hh
file(GLOB source_files "src/*.cc")       	#include all the .cc files as source
file(GLOB exec_file "exec/ciao_mondo.cc")  	#include the main


# Create the Static library
set(LIB  Biblioteca)						#set the name of the static library (.a) as projectLib.a into the build directory
add_library(${LIB} STATIC ${source_files})	#add all the .cc to static library previously defined

# Create the executable
set(EXEC executable)						#set the name of the executable
add_executable(${EXEC} ${exec_file})		#declare the executable with its file
target_link_libraries(${EXEC} ${LIB})		#add the library to the created executable	



# target_include_directories(${EXEC} PRIVATE src/include/)	#why this line???
