@echo off

set PATH=%~dp0\system\usr\bin;%PATH%
chdir system/

echo ----------------------------------------
echo Downloading MSYS2 subsystem base...
echo ----------------------------------------

busybox wget -P ../archives http://repo.msys2.org/msys/i686/filesystem-2017.05-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/msys2-runtime-2.9.0-2-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/coreutils-8.26-2-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/bash-4.4.012-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/bash-completion-2.5-1-any.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libintl-0.19.8.1-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libiconv-1.14-2-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libpcre-8.36-2-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/gcc-libs-6.4.0-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/pacman-5.0.1-4-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/gmp-6.1.2-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/mpc-1.0.3-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/mpfr-3.1.5.1-3-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/isl-0.16.1-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libreadline-7.0.003-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/ncurses-6.0.20170708-2-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libxml2-2.9.7-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/zlib-1.2.8-3-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libbz2-1.0.6-2-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/xmlto-0.0.28-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/pacman-mirrors-20160112-1-any.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/msys2-keyring-r9.397a52e-1-any.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/gnupg-1.4.22-2-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libcurl-7.49.1-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/msys2-w32api-runtime-5.0.0.4961.e09dd4ca-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libssh2-1.8.0-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libcrypt-2.1-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libopenssl-1.0.2.m-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libidn-1.33-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/findutils-4.6.0-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libunistring-0.9.7-2-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libutil-linux-2.26.2-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libgpgme-1.6.0-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/dash-0.5.9.1-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/rebase-4.4.2-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/grep-3.0-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/sed-4.4-2-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/heimdal-1.5.3-9-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/heimdal-libs-1.5.3-9-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/libsqlite-3.8.8.2-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/liblzma-5.2.3-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/icu-59.1-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/util-linux-2.26.2-1-i686.pkg.tar.xz
busybox wget -P ../archives http://repo.msys2.org/msys/i686/info-6.3-1-i686.pkg.tar.xz

echo ----------------------------------------
echo Installing MSYS2 subsystem base...
echo ----------------------------------------

busybox tar -xvf ../archives/filesystem-2017.05-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/msys2-runtime-2.9.0-2-i686.pkg.tar.xz
busybox tar -xvf ../archives/coreutils-8.26-2-i686.pkg.tar.xz
busybox tar -xvf ../archives/bash-4.4.012-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/bash-completion-2.5-1-any.pkg.tar.xz
busybox tar -xvf ../archives/libintl-0.19.8.1-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/libiconv-1.14-2-i686.pkg.tar.xz
busybox tar -xvf ../archives/libpcre-8.36-2-i686.pkg.tar.xz
busybox tar -xvf ../archives/gcc-libs-6.4.0-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/pacman-5.0.1-4-i686.pkg.tar.xz
busybox tar -xvf ../archives/gmp-6.1.2-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/mpc-1.0.3-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/mpfr-3.1.5.1-3-i686.pkg.tar.xz
busybox tar -xvf ../archives/isl-0.16.1-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/libreadline-7.0.003-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/ncurses-6.0.20170708-2-i686.pkg.tar.xz
busybox tar -xvf ../archives/libxml2-2.9.7-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/zlib-1.2.8-3-i686.pkg.tar.xz
busybox tar -xvf ../archives/libbz2-1.0.6-2-i686.pkg.tar.xz
busybox tar -xvf ../archives/xmlto-0.0.28-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/pacman-mirrors-20160112-1-any.pkg.tar.xz
busybox tar -xvf ../archives/msys2-keyring-r9.397a52e-1-any.pkg.tar.xz
busybox tar -xvf ../archives/gnupg-1.4.22-2-i686.pkg.tar.xz
busybox tar -xvf ../archives/libcurl-7.49.1-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/msys2-w32api-runtime-5.0.0.4961.e09dd4ca-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/libssh2-1.8.0-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/libcrypt-2.1-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/libopenssl-1.0.2.m-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/libidn-1.33-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/findutils-4.6.0-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/libunistring-0.9.7-2-i686.pkg.tar.xz
busybox tar -xvf ../archives/libutil-linux-2.26.2-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/dash-0.5.9.1-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/rebase-4.4.2-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/grep-3.0-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/sed-4.4-2-i686.pkg.tar.xz
busybox tar -xvf ../archives/heimdal-libs-1.5.3-9-i686.pkg.tar.xz
busybox tar -xvf ../archives/heimdal-1.5.3-9-i686.pkg.tar.xz
busybox tar -xvf ../archives/libsqlite-3.8.8.2-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/liblzma-5.2.3-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/icu-59.1-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/util-linux-2.26.2-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/info-6.3-1-i686.pkg.tar.xz
busybox tar -xvf ../archives/libgpgme-1.6.0-1-i686.pkg.tar.xz
busybox cp ../rebasecore.sh usr/bin/

busybox cp ../download_toolchain.sh usr/bin/

chdir usr/bin/

dash -c ./rebasecore.sh
bash -lc 'pacman-key --init'
bash -lc 'pacman -Sy'

echo ----------------------------------------
echo Updating core package manager and
echo Installing Urus Studio dependencies...
echo ----------------------------------------

bash -lc 'pacman --force --needed -S --noconfirm pacman wget gcc git gawk zip rsync libxml2-devel libxslt-devel'

bash -lc '
        if [ $APPVEYORCI != 0 ] ; then
            pacman --force --needed -S --noconfirm python2 python2-pip python2-py'
            cp -f /usr/bin/python2 /usr/bin/python'
        fi
        '

bash -lc 'pacman --needed -S --force --noconfirm make'
bash -lc 'pacman --needed -S --force --noconfirm cmake'
bash -lc 'pip2 install numpy future lxml'

echo ----------------------------------------
echo Rebasing MSYS2 core...
echo ----------------------------------------

bash -lc 'pacman --needed -S --force --noconfirm rebase'
bash -lc 'rm -f ../../dir ../../.BUILDINFO ../../.INSTALL ../../.MTREE ../../.PKGINFO'

dash -c ./download_toolchain.sh

cd ../../

echo ----------------------------------------
echo Instalation finished!
echo Press any key to exit
echo ----------------------------------------

busybox sleep 10
