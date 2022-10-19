cmake_minimum_required(VERSION 3.0)
project(calculator)

set(CMAKE_CXX_STANDART 11)

include_directories(include)
add_executable(calculator main.cpp calculator.cpp)
