@echo off

set PATH=%~dp0\system;
set PATH=%~dp0\system\usr\bin;%PATH%
set MSYSTEM=MSYS
chdir system/

echo ----------------------------------------
echo Downloading MSYS2 subsystem base...
echo ----------------------------------------

busybox wget -P ../archives http://repo.msys2.org/distrib/i686/msys2-base-i686-20161025.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/gcc-6.4.0-3-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/gcc-libs-6.4.0-3-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/gdb-7.11.1-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/binutils-2.28-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/python2-2.7.13-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/python2-pip-9.0.1-3-any.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/python2-setuptools-36.4.0-1-any.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/python2-distutils-extra-2.39-1-any.pkg.tar.xz
rem busybox wget -P ../archives http://repo.msys2.org/msys/i686/libxml2-python-2.9.5-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/python2-py-1.4.34-1-any.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/python2-pyparsing-2.2.0-2-any.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/python2-appdirs-1.4.3-2-any.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/python2-pytest-3.2.1-1-any.pkg.tar.xz
rem busybox wget -P ../archives http://repo.msys2.org/msys/i686/libxml2-devel-2.9.5-1-i686.pkg.tar.xz
rem busybox wget -P ../archives http://repo.msys2.org/msys/i686/libxml2-2.9.5-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/xmlto-0.0.28-1-i686.pkg.tar.xz
rem busybox wget -P ../archives http://repo.msys2.org/msys/i686/libxslt-devel-1.1.30-1-i686.pkg.tar.xz
rem busybox wget -P ../archives http://repo.msys2.org/msys/i686/libxslt-python-1.1.30-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/rsync-3.1.2-2-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/git-2.15.0-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/wget-1.19.1-3-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/tar-1.29-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/mpfr-4.0.0.1-3-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/mpfr-devel-4.0.0.1-3-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/mpc-1.1.0-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/mpc-devel-1.1.0-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/msys2-w32api-runtime-5.0.0.4961.e09dd4ca-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/msys2-w32api-headers-5.0.0.4961.e09dd4ca-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/isl-0.18-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/isl-devel-0.18-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/msys2-runtime-devel-2.9.0-2-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/gmp-devel-6.1.2-1-i686.pkg.tar.xz

echo ----------------------------------------
echo Installing MSYS2 subsystem base...
echo ----------------------------------------

busybox tar -xvf ../archives/msys2-base-i686-20161025.tar.xz -C ../

busybox cp -f ./busybox.exe ../
chdir ../
busybox rm -f ./msys32/msys2.ini
busybox rm -f ./msys32/msys2.exe
busybox rm -f ./msys32/mingw32.exe
busybox rm -f ./msys32/mingw32.ini
busybox rm -f ./msys32/mingw64.exe
busybox rm -f ./msys32/mingw64.ini
busybox mv system/ system_temp/
busybox mv msys32/ system/
busybox cp -f ./busybox.exe system/
set PATH=%~dp0\system;%PATH%
chdir system/

busybox tar -xvf ../archives/gcc-6.4.0-3-i686.pkg.tar.xz
busybox tar -xvf ../archives/gcc-libs-6.4.0-3-i686.pkg.tar.xz
busybox tar -xvf ../archives/gdb-7.11.1-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/binutils-2.28-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/python2-2.7.13-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/python2-pip-9.0.1-3-any.pkg.tar.xz
busybox tar -xvf ../archives/python2-distutils-extra-2.39-1-any.pkg.tar.xz
busybox tar -xvf ../archives/python2-setuptools-36.4.0-1-any.pkg.tar.xz
rem busybox tar -xvf ../archives/libxml2-python-2.9.5-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/python2-py-1.4.34-1-any.pkg.tar.xz
busybox tar -xvf ../archives/python2-pyparsing-2.2.0-2-any.pkg.tar.xz
busybox tar -xvf ../archives/python2-appdirs-1.4.3-2-any.pkg.tar.xz
busybox tar -xvf ../archives/python2-pytest-3.2.1-1-any.pkg.tar.xz
rem busybox tar -xvf ../archives/libxml2-devel-2.9.5-1-i686.pkg.tar.xz
rem busybox tar -xvf ../archives/libxml2-2.9.5-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/xmlto-0.0.28-1-i686.pkg.tar.xz
rem busybox tar -xvf ../archives/libxslt-devel-1.1.30-1-i686.pkg.tar.xz
rem busybox tar -xvf ../archives/libxslt-python-1.1.30-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/rsync-3.1.2-2-i686.pkg.tar.xz
busybox tar -xvf ../archives/git-2.15.0-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/wget-1.19.1-3-i686.pkg.tar.xz
busybox tar -xvf ../archives/tar-1.29-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/mpfr-4.0.0.1-3-i686.pkg.tar.xz
busybox tar -xvf ../archives/mpfr-devel-4.0.0.1-3-i686.pkg.tar.xz
busybox tar -xvf ../archives/mpc-1.1.0-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/mpc-devel-1.1.0-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/msys2-w32api-runtime-5.0.0.4961.e09dd4ca-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/msys2-w32api-headers-5.0.0.4961.e09dd4ca-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/isl-0.18-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/isl-devel-0.18-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/msys2-runtime-devel-2.9.0-2-i686.pkg.tar.xz
busybox tar -xvf ../archives/gmp-devel-6.1.2-1-i686.pkg.tar.xz

busybox rm -f ../busybox.exe
busybox cp ../rebasecore.sh usr/bin/

busybox cp ../download_toolchain.sh usr/bin/
busybox cp ../start_urusstudio usr/bin/

chdir usr/bin/

dash -c /usr/bin/rebaseall -p
bash -lc 'echo updating msys base...'
bash -lc 'pacman --noconfirm -Sy'

echo ----------------------------------------
echo Updating core package manager and
echo Installing Urus Studio dependencies...
echo ----------------------------------------

bash -lc 'pacman --noconfirm -R catgets libcatgets'
dash -c 'pacman --needed --force --noconfirm -Suy'
dash -c /usr/bin/rebaseall -p
bash -lc 'pacman --needed --force --noconfirm -Suy'
dash -c /usr/bin/rebaseall -p
rem bash -lc 'pacman --noconfirm -S gcc binutils bison wget git rsync libxml2-devel libxslt-devel libxslt-python libxml2-python python2 python2-pip python2-py'
bash -lc 'pacman --needed --noconfirm -S wget zip libxml2-devel libxslt-devel'
dash -c /usr/bin/rebaseall -p
bash -lc 'pacman --noconfirm -S make'
bash -lc 'pacman --noconfirm -S cmake'

echo ----------------------------------------
echo Installation continue please wait...
echo ----------------------------------------

dash -c /usr/bin/rebaseall -p
bash -lc 'cp -f /usr/bin/python2 /usr/bin/python'
bash -lc 'pip2 install numpy'
bash -lc 'pip2 install future lxml'

bash -lc 'pacman --needed -S --force --noconfirm rebase'
dash -c 'rm -f ../../dir ../../.BUILDINFO ../../.INSTALL ../../.MTREE ../../.PKGINFO'

chdir ../../

busybox sh -c ../update_fstab.sh

chdir usr/bin/
dash -c /usr/bin/rebaseall -p
dash -c ./download_toolchain.sh
chdir ../../

echo ----------------------------------------
echo Instalation finished!
echo ----------------------------------------

busybox sleep 10
