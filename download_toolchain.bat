@echo off

set PATH=%~dp0\system\usr\bin;%PATH%
chdir system/
busybox cp -f ../download_toolchain.sh usr/bin/
busybox cp -f ../su.exe usr/bin/
chdir usr/bin/
su -c "./dash -c 'export PATH=$(pwd):$PATH && ./download_toolchain.sh' && exit 0"
printf "don't close any console window!\nplease wait.\n"
dash -c "rm -f /toolchain_download_ok.txt; timeoutcnt=1; while [ ! -e /toolchain_download_ok.txt ] && [ $timeoutcnt -le 600 ]; do printf '*' && sleep 10 $(( timeoutcnt=timeoutcnt+1 )); done"
printf "\nok\nYou can close this window.\n"
pause
chdir ../../../

