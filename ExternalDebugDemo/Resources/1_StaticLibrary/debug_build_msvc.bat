@echo off

rmdir /S /Q build32 build64 > NUL

cmake -B build32 -DCMAKE_BUILD_TYPE=Debug -DARCH_BITS=32 -A Win32
cmake --build build32
cmake -B build64 -DCMAKE_BUILD_TYPE=Debug -DARCH_BITS=64
cmake --build build64

pause
