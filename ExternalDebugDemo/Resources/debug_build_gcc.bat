@echo off

rem rem 表示注释掉此行
rem 若使用内置 gcc，请删掉后续三行的 rem，并设置 Sysplorer_PATH 改为您的 Sysplorer 安装路径
rem set "Sysplorer_PATH=C:/Program Files/MWORKS/Sysplorer2025b"（路径请使用 `/` 不要使用 `\`)
rem set "MINGW32=%Sysplorer_PATH%/Simulator/mingw32"
rem set "MINGW64=%Sysplorer_PATH%/Simulator/mingw64"

if not defined MINGW32 (
    echo [错误] 请打开此文件，设置 MINGW32 的环境变量（路径请使用 `/` 不要使用 `\`)
)
if not defined MINGW64 (
    echo [错误] 请打开此文件, MINGW64 的环境变量（路径请使用 `/` 不要使用 `\`)
)

where cmake >nul 2>nul
if errorlevel 1 echo [错误] 请先安装 cmake（推荐 cmake3.21.7），并将 cmake 加入到环境变量 Path 中

cd 1_StaticLibrary
cmd /c debug_build_gcc.bat
cd ..
cd 2_SharedLibrary
cmd /c debug_build_gcc.bat
cd ..

pause
