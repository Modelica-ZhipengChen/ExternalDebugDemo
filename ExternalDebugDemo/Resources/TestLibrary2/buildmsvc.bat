@echo off

rmdir /S /Q build > NUL 2>&1

cmake -B build -DCMAKE_BUILD_TYPE=Debug
cmake --build build

pause
