@echo off

set PATH=%~dp0\system\usr\bin;%PATH%
chdir system/
busybox cp ../download_toolchain.sh usr/bin/
chdir usr/bin/
dash ./download_toolchain.sh
chdir ../../../

