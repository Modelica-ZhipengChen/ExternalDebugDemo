rem please config MINGW32 and MINGW64 just like the following example:
rem set MINGW32=C:/Tools/mingw32
rem set MINGW64=C:/Tools/mingw64

cd 1_StaticLibrary
start debug_build_gcc.bat
cd ..
cd 2_SharedLibrary
start debug_build_gcc.bat
cd ..
pause
