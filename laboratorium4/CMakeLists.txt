cmake_minimum_required(VERSION 3.0.0)

project(laboratorium4)

include_directories(./include ./src)

add_executable(output ./src/main.cpp ./src/matrix.cpp)

