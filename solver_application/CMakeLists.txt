cmake_minimum_required(VERSION 3.4) 

option(CPACK_GENERATOR_DEB OFF)
option(CPACK_GENERATOR_RPM OFF)
option(CPACK_GENERATOR_MSI OFF)
option(CPACK_GENERATOR_DMG OFF)

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

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin)

set(CPACK_SOURCE_GENERATOR "TGZ;ZIP")
if(CPACK_GENERATOR_RPM)
    set(CPACK_GENERATOR "RPM")
endif()
if(CPACK_GENERATOR_DEB)
    set(CPACK_DEBIAN_PACKAGE_MAINTAINER "the-blind-pew")
    set(CPACK_GENERATOR "DEB")
endif()
if(CPACK_GENERATOR_MSI)
    set(CPACK_GENERATOR "WIX")
endif()
if(CPACK_GENERATOR_DMG)
    set(MACOSX_BUNDLE TRUE)
    set(CPACK_GENERATOR "DragNDrop")
endif()
include(CPack)

unset(CPACK_GENERATOR_RPM CACHE)
unset(CPACK_GENERATOR_DEB CACHE)
unset(CPACK_GENERATOR_MSI CACHE)
unset(CPACK_GENERATOR_DMG CACHE)
