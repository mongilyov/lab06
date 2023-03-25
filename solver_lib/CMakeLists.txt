cmake_minimum_required(VERSION 3.4)

set(CMAKE_CXX_STANDART 20)

project(solver_lib)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
add_library(${PROJECT_NAME} STATIC ${CMAKE_CURRENT_SOURCE_DIR}/sources/solver.cpp)
