@echo off

rmdir /S /Q Library > NUL 2>&1

cd 1_StaticLibrary
rmdir /S /Q build build32 build64 build_gcc32 build_gcc64 > NUL 2>&1
cd ..
cd 2_SharedLibrary
rmdir /S /Q build build32 build64 build_gcc32 build_gcc64 > NUL 2>&1
cd ..

echo "ÇåÀíÍê±Ï"

pause
