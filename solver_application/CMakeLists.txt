cmake_minimum_required(VERSION 3.4)

project(solverApp)

add_executable(${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/sources/equation.cpp)

include_directories(
	${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib/include
	${CMAKE_CURRENT_SOURCE_DIR}/../solver_lib/include)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib formatter_ex)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../solver_lib solver_lib)

target_link_libraries(${PROJECT_NAME}
	PUBLIC formatter_ex
	PUBLIC solver_lib)
