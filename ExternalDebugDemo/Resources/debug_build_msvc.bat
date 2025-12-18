@echo off

where cmake >nul 2>nul
if errorlevel 1 echo [错误] 请先安装 cmake（推荐 cmake3.21.7），并将 cmake 加入到环境变量 Path 中

cd 1_StaticLibrary
cmd /c debug_build_msvc.bat
cd ..
cd 2_SharedLibrary
cmd /c debug_build_msvc.bat
cd ..

pause
