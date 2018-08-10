@echo off

set PATH=%~dp0\system;%PATH%
set PATH=%~dp0\system\usr\bin;%PATH%
set SRCPATH=%~dp0

IF EXIST "%SRCPATH%\system\bin\" (
	pushd %SRCPATH%
	dash -c ./install_dfu_driver.sh
	pnputil -i -a %SRCPATH%\dfu-programmer-master\driver_win\atmel_usb_dfu.inf
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
