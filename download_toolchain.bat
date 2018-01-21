@echo off

set PATH=%~dp0\system\usr\bin;%PATH%
chdir system/
busybox cp ../download_toolchain.sh usr/bin/
chdir usr/bin/
dash ./download_toolchain.sh
chdir ../../
busybox cp -rf archives/ ../
busybox tar -xvzf ../archives/host-win32-i686-mingw32.tar.gz -C mingw32
chdir ..
