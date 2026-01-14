cmake_minimum_required(VERSION 3.10)
Project(myApp)

include_directories(${CMAKE_SOURCE_DIR}/src/)
include_directories(${CMAKE_SOURCE_DIR}/../Include/)
link_directories(${CMAKE_SOURCE_DIR}/../Library/win64)

set(sourcefiles
  src/load_library.c
  src/main.cpp
)

add_executable(myExeApp ${sourcefiles})

add_custom_command(TARGET myExeApp POST_BUILD
  COMMAND ${CMAKE_COMMAND} -E copy_if_different $<TARGET_FILE:myExeApp> ${CMAKE_SOURCE_DIR}
)

add_executable(myExeAppThread ${sourcefiles})

target_compile_definitions(myExeAppThread PRIVATE MUL_THREAD=1)
add_custom_command(TARGET myExeAppThread POST_BUILD
  COMMAND ${CMAKE_COMMAND} -E copy_if_different $<TARGET_FILE:myExeAppThread> ${CMAKE_SOURCE_DIR}
)
