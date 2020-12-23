@echo off

set PATH=%~dp0\system\usr\bin;%PATH%
chdir system/
busybox cp ../download_toolchain.sh usr/bin/
busybox cp ../su.exe usr/bin/
chdir usr/bin/
su -c "./dash -c 'PATH=$(pwd):$PATH ./download_toolchain.sh'"
printf "don't close any console window!\nplease wait until this process finish.\n"
dash -c "rm -f /toolchain_download_ok.txt; timeout=1; while [ ! -e /toolchain_download_ok.txt ] && [ $timeout -le 600 ]; do printf '*' && sleep 10 $(( timeout=timeout+1 )); done"
printf "\nok\nYou can close this window.\n"
pause
chdir ../../../

