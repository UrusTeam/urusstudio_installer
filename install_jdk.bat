@echo off

set PATH=%~dp0\system\usr\bin;%PATH%
rem chdir system/
rem busybox cp ../install_genromfs.sh usr/bin/
rem chdir usr/bin/
rem dash ./install_genromfs.sh
rem chdir ../../../
dash ./install_jdk.sh
