cmake_minimum_required(VERSION 3.24.2)

project(lab3ak)

set(SOURCE_EXE lab3ak main.cpp)

set(SOURCE_LIB lab3ak calculator.cpp)

include_directories(include)

add_library(sharedtest SHARED calculator.cpp)

add_executable(elfFile main.cpp)

target_link_libraries(elfFile sharedtest)
