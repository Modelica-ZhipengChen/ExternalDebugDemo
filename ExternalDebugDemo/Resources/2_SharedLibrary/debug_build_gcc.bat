@echo off

rmdir /S /Q build_gcc32 build_gcc64 > NUL 2>&1

if exist "%MINGW32%/bin/gcc.exe" (
cmake -B build_gcc32 -DCMAKE_BUILD_TYPE=Debug -DARCH_BITS=32 -DCMAKE_C_FLAGS="-m32" -G "MinGW Makefiles" -DCMAKE_C_COMPILER="%MINGW32%/bin/gcc.exe" -DCMAKE_CXX_COMPILER="%MINGW32%/bin/g++.exe" -DCMAKE_MAKE_PROGRAM="%MINGW32%/bin/mingw32-make.exe"
cmake --build build_gcc32
) else (
echo "please config environment variable: MINGW32"
)

if exist "%MINGW64%/bin/gcc.exe" (
cmake -B build_gcc64 -DCMAKE_BUILD_TYPE=Debug -DARCH_BITS=64 -DCMAKE_C_FLAGS="-m64" -G "MinGW Makefiles" -DCMAKE_C_COMPILER="%MINGW64%/bin/gcc.exe" -DCMAKE_CXX_COMPILER="%MINGW64%/bin/g++.exe" -DCMAKE_MAKE_PROGRAM="%MINGW64%/bin/mingw32-make.exe"
cmake --build build_gcc64
) else (
echo "please config environment variable: MINGW32"
)

pause
