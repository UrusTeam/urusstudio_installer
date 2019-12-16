@echo off

set PATH=%~dp0
set PATH=%~dp0\system;%PATH%
set PATH=%~dp0\system\usr\bin;%PATH%
set MSYSTEM=MSYS
chdir system/

echo ----------------------------------------
echo Downloading subsystem base...
echo ----------------------------------------

busybox sh -c "../check_repo.sh"

IF EXIST .stopinstall (
    echo Installation stopped!
    pause
    exit 0
)

busybox sh -c "../download_base.sh"

echo ----------------------------------------
echo Installing subsystem base...
echo ----------------------------------------

busybox sh -c "tar -xvf ../archives/msys2-base-i686-20180531.tar.xz -C ../ &>/dev/null"
busybox printf "*\n"
busybox sleep 2
busybox cp -f ./busybox.exe ../
chdir ../
busybox rm -f ./msys32/msys2.ini
busybox rm -f ./msys32/msys2.exe
busybox rm -f ./msys32/mingw32.exe
busybox rm -f ./msys32/mingw32.ini
busybox rm -f ./msys32/mingw64.exe
busybox rm -f ./msys32/mingw64.ini
busybox rm -f ./msys32/msys2_shell.cmd
busybox rm -f ./msys32/msys2.ico
busybox mv system system_temp
busybox mv msys32 system
busybox sleep 2
busybox cp -f ./busybox.exe system/
set PATH=%~dp0\system;%PATH%
chdir system/

busybox printf "\n"
echo ----------------------------------------
echo Installing toolchains base...
echo ----------------------------------------

busybox sh -c "tar -xvf ../archives/gcc-7.3.0-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/gcc-libs-7.3.0-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/gdb-7.11.1-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/binutils-2.28-1-i686.pkg.tar.xz &>/dev/null"
busybox printf "*"
busybox sh -c "tar -xvf ../archives/python2-2.7.13-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/python2-pip-9.0.1-3-any.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/python2-distutils-extra-2.39-1-any.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/python2-setuptools-36.4.0-1-any.pkg.tar.xz &>/dev/null"
busybox printf "*"
rem busybox sh -c "tar -xvf ../archives/libxml2-python-2.9.5-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/python2-py-1.4.34-1-any.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/python2-pyparsing-2.2.0-2-any.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/python2-appdirs-1.4.3-2-any.pkg.tar.xz &>/dev/null"
busybox printf "*"
busybox sh -c "tar -xvf ../archives/python2-pytest-3.2.1-1-any.pkg.tar.xz &>/dev/null"
rem busybox sh -c "tar -xvf ../archives/libxml2-devel-2.9.5-1-i686.pkg.tar.xz &>/dev/null"
rem busybox sh -c "tar -xvf ../archives/libxml2-2.9.5-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/xmlto-0.0.28-1-i686.pkg.tar.xz &>/dev/null"
busybox printf "*"
rem busybox sh -c "tar -xvf ../archives/libxslt-devel-1.1.30-1-i686.pkg.tar.xz &>/dev/null"
rem busybox sh -c "tar -xvf ../archives/libxslt-python-1.1.30-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/rsync-3.1.3-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/git-2.17.0-1-i686.pkg.tar.xz &>/dev/null"
busybox printf "*"
busybox sh -c "tar -xvf ../archives/wget-1.19.4-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/tar-1.30-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/mpfr-4.0.0.1-3-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/mpfr-devel-4.0.0.1-3-i686.pkg.tar.xz &>/dev/null"
busybox printf "*"
busybox sh -c "tar -xvf ../archives/mpc-1.1.0-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/mpc-devel-1.1.0-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/msys2-w32api-runtime-6.0.0.5097.36d7b92b-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/msys2-w32api-headers-6.0.0.5097.36d7b92b-1-i686.pkg.tar.xz &>/dev/null"
busybox printf "*"
busybox sh -c "tar -xvf ../archives/isl-0.18-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/isl-devel-0.18-1-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/msys2-runtime-devel-2.10.0-2-i686.pkg.tar.xz &>/dev/null"
busybox sh -c "tar -xvf ../archives/gmp-devel-6.1.2-1-i686.pkg.tar.xz &>/dev/null"
busybox printf "*\n\n"

busybox rm -f ../busybox.exe
busybox cp -f ../rebasecore.sh usr/bin/

busybox cp -f ../download_toolchain.sh usr/bin/
busybox cp -f ../start_urusstudio usr/bin/
busybox cp -f ../install_genromfs.sh usr/bin/
busybox cp -f ../android usr/bin/
busybox cp -f ../download_android_tools usr/bin/
busybox cp -f ../ndk-build usr/bin/
busybox cp -f ../install_pythondeps.sh usr/bin/install_pythondeps.sh
busybox cp -f ../packages/urus_shell/appurus.ico .
busybox cp -f ../packages/urus_shell/urus_shell.cmd .
busybox mkdir archives
busybox cp -rf ../packages archives/

chdir usr/bin/

dash -c /usr/bin/rebaseall -p
bash -lc "echo updating msys base..."
busybox clear

echo ----------------------------------------
echo Updating core package manager and
echo Installing Urus Studio dependencies...
echo ----------------------------------------

rem bash -lc "pacman --noconfirm -R catgets libcatgets"
rem dash -c "/usr/bin/pacman --needed --force --noconfirm -Sy"
dash -c /usr/bin/rebaseall -p
rem bash -lc "pacman --needed --force --noconfirm -Sy"
dash -c /usr/bin/rebaseall -p
rem bash -lc "pacman --noconfirm -S gcc binutils bison wget git rsync libxml2-devel libxslt-devel libxslt-python libxml2-python python2 python2-pip python2-py"
rem bash -lc "pacman --needed --force --noconfirm -S wget"
bash -lc "pacman --needed --force --noconfirm -S libxml2-devel libxslt-devel &>/dev/null"
busybox printf "*"
bash -lc "pacman --needed --force --noconfirm -S openssh &>/dev/null"
busybox printf "*"
bash -lc "pacman --needed --force --noconfirm -Sdd mingw-w64-i686-editrights cygrunsrv &>/dev/null"
busybox printf "*"
bash -lc "pacman --needed --force --noconfirm -Sdd autogen &>/dev/null"
busybox printf "*"
bash -lc "pacman --needed --force --noconfirm -Sdd automake-wrapper &>/dev/null"
busybox printf "*"
bash -lc "pacman --needed --force --noconfirm -Sdd patch patchutils &>/dev/null"
busybox printf "*"
bash -lc "pacman --needed --force --noconfirm -Sdd diffstat diffutils &>/dev/null"
busybox printf "*"
bash -lc "pacman --needed --force --noconfirm -Sdd nano dos2unix &>/dev/null"
busybox printf "*"
bash -lc "pacman --needed --force --noconfirm -Sdd zip unzip &>/dev/null"
busybox printf "*"
dash -c /usr/bin/rebaseall -p
busybox printf "*"
bash -lc "pacman --needed --force --noconfirm -Sdd make &>/dev/null"
busybox printf "*"
bash -lc "pacman --needed --force --noconfirm -Sdd cmake &>/dev/null"
busybox printf "*"
bash -lc "pacman --needed --force --noconfirm -Sdd vim &>/dev/null"
busybox printf "*"
bash -lc "pacman --needed --force --noconfirm -Sdd cscope &>/dev/null"
busybox printf "*\n\n"

echo ----------------------------------------
echo Installation continue please wait...
echo ----------------------------------------
busybox printf "\n"

dash -c /usr/bin/rebaseall -p
dash -c 'rm -f ../../dir ../../.BUILDINFO ../../.INSTALL ../../.MTREE ../../.PKGINFO'
chdir ../../

busybox sh -c ../update_fstab.sh

chdir usr/bin/
dash -c /usr/bin/rebaseall -p

busybox printf "\n"
echo ----------------------------------------
echo Downloading and Installing
echo URUS cross toolchains and dependencies...
echo ----------------------------------------

dash -c ./download_toolchain.sh
dash -c ./install_genromfs.sh

busybox printf "\n"
echo ----------------------------------------
echo Installing dependencies...
echo ----------------------------------------

dash -lc '/usr/bin/install_pythondeps.sh'
chdir ../../

busybox printf "\n"
echo ----------------------------------------
echo Instalation finished!
echo ----------------------------------------

busybox sleep 5
