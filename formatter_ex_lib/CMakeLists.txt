cmake_minimum_required(VERSION 3.24)
project(formatter_ex)

add_library(${PROJECT_NAME} STATIC ${CMAKE_CURRENT_SOURCE_DIR}/sources/formatter_ex.cpp)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_lib formatter)

target_link_libraries(${PROJECT_NAME} PUBLIC formatter)
