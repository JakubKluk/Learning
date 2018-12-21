cmake_minimum_required(VERSION 3.12)
project(Matrix)

set(CMAKE_CXX_STANDARD 14)

add_executable(Matrix main.cpp include/Matrix.hpp src/Matrix.cpp include/Shape.hpp include/Matrix_Functions.hpp src/Matrix_Functions.cpp)