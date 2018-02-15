@echo off

set PATH=%~dp0\system\usr\bin;%PATH%
chdir system/
busybox cp ../install_genromfs.sh usr/bin/
chdir usr/bin/
dash ./install_genromfs.sh
chdir ../../../
