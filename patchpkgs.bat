@echo off

set PATH=%~dp0\system\usr\bin;%PATH%
chdir packages/android-ndk-r13b/

dash -c ./patchpkg.sh

cd ../../
