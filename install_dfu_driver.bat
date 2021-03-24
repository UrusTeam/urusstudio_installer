@echo off

set PUSHD=%~dp0
set PATH=%PUSHD%system;%PATH%
set PATH=%PUSHD%system\usr\bin;%PATH%
set SRCPATH=%~dp0

IF EXIST "%SRCPATH%system\bin\" (
	pushd %SRCPATH%
    su -c "./system/usr/bin/dash -c 'export SRCPATH=$(pwd); export PATH=$(pwd)/system/usr/bin:$PATH; ./install_dfu_driver.sh'"
) ELSE (
	echo.
	echo No bin folder found!
	echo Please install first Urus Studio base file structure!
	echo.
	echo TIP:
	echo      Run install_win.bat to install Urus Studio and
	echo      base file structure system
	echo.
)

pause
