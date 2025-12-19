cmake_minimum_required(VERSION 3.10)
Project(myDiv)

ADD_DEFINITIONS(-DMW_EXPORT_API)

include_directories(${CMAKE_SOURCE_DIR}/src/)
include_directories(${CMAKE_SOURCE_DIR}/../Include/)

set(sourcefiles
  src/my_div.cpp
  src/my_integer.cpp
)

add_library(myDiv SHARED ${sourcefiles})

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

add_custom_command(TARGET myDiv POST_BUILD
  COMMAND ${CMAKE_COMMAND} -E copy_if_different $<TARGET_FILE:myDiv> ${TARGET_COPY_DIR}
)

if (CMAKE_C_COMPILER_ID MATCHES "MSVC")
  add_custom_command(TARGET myDiv POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different $<TARGET_FILE_DIR:myDiv>/$<TARGET_FILE_BASE_NAME:myDiv>.lib ${TARGET_COPY_DIR}
    COMMAND ${CMAKE_COMMAND} -E
        "$<IF:$<CONFIG:Debug>,copy_if_different,echo>"
        "$<IF:$<CONFIG:Debug>,$<TARGET_FILE_DIR:myDiv>/$<TARGET_FILE_BASE_NAME:myDiv>.pdb,Not copying in non-Debug>"
        "$<IF:$<CONFIG:Debug>,${TARGET_COPY_DIR},>"
  )
elseif(CMAKE_SYSTEM_NAME MATCHES "Windows")
  add_custom_command(TARGET myDiv POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different $<TARGET_FILE_DIR:myDiv>/lib$<TARGET_FILE_BASE_NAME:myDiv>.dll.a ${TARGET_COPY_DIR}lib$<TARGET_FILE_BASE_NAME:myDiv>.a
  )
endif()
