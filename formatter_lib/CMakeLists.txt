cmake_minimum_required(VERSION 3.24)
project(formatter)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

add_library(${PROJECT_NAME} STATIC ${CMAKE_CURRENT_SOURCE_DIR}/sources/formatter.cpp)
