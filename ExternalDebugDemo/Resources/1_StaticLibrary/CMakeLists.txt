cmake_minimum_required(VERSION 3.10)
Project(myAdd)

include_directories(${CMAKE_SOURCE_DIR}/src/)
include_directories(${CMAKE_SOURCE_DIR}/../Include/)

set(sourcefiles
  src/my_add.cpp
)

add_library(myAdd STATIC ${sourcefiles})

if (WIN32)
  set(ARCH_NAME "win")
else()
  set(ARCH_NAME "linux")
endif()

set(ARCH_DIR "${ARCH_NAME}${ARCH_BITS}")
message(STATUS "ARCH_DIR: ${ARCH_DIR}")

set(TARGET_COPY_DIR ${CMAKE_SOURCE_DIR}/../Library/${ARCH_DIR}/)
if(NOT IS_DIRECTORY "${TARGET_COPY_DIR}")
    file(MAKE_DIRECTORY "${TARGET_COPY_DIR}")
endif()

add_custom_command(TARGET myAdd POST_BUILD
  COMMAND ${CMAKE_COMMAND} -E copy_if_different $<TARGET_FILE:myAdd> ${TARGET_COPY_DIR}
)

if (CMAKE_C_COMPILER_ID STREQUAL "MSVC")
  add_custom_command(TARGET myAdd POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different $<TARGET_FILE_DIR:myAdd>/$<TARGET_FILE_BASE_NAME:myAdd>.lib ${TARGET_COPY_DIR}
    COMMAND ${CMAKE_COMMAND} -E
        "$<IF:$<CONFIG:Debug>,copy_if_different,echo>"
        "$<IF:$<CONFIG:Debug>,$<TARGET_FILE_DIR:myAdd>/$<TARGET_FILE_BASE_NAME:myAdd>.pdb,Not copying in non-Debug>"
        "$<IF:$<CONFIG:Debug>,${TARGET_COPY_DIR},>"
  )
endif()
