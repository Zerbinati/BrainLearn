@echo off
REM x64 builds begin
SET PATH=C:\msys64\mingw64\bin;C:\msys64\usr\bin;%PATH%
REM make -j profile-build
mingw32-make profile-build ARCH=native COMP=mingw -j %Number_Of_Processors%
strip brainlearn.exe
ren brainlearn.exe Brainlearn26.3-native.exe
make clean
pause