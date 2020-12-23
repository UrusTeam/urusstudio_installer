#!/bin/sh
umask 002
wget -c --trust-server-names --max-redirect 5 -P /archives/ https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/host-win32-i686-mingw32.tar.gz.md5/download &>/dev/null
printf "*"
wget -c --trust-server-names --max-redirect 5 -P /archives/ https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/host-win32-i686-mingw32.tar.gz/download &>/dev/null
printf "*"
wget -c --trust-server-names --max-redirect 5 -P /archives/ https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/host-win32-avr-gcc.tar.gz.md5/download &>/dev/null
printf "*"
wget -c --trust-server-names --max-redirect 5 -P /archives/ https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/host-win32-avr-gcc.tar.gz/download &>/dev/null
printf "*"
wget -c --trust-server-names --max-redirect 5 -P /archives/ https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/wx-urus/wx-2.8-urus-msw.tar.gz.md5/download &>/dev/null
printf "*"
wget -c --trust-server-names --max-redirect 5 -P /archives/ https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/wx-urus/wx-2.8-urus-msw.tar.gz/download &>/dev/null
printf "*"
wget -c --trust-server-names --max-redirect 5 -P /archives/ https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/urusstudio/host-win32-urusstudio.tar.gz.md5/download &>/dev/null
printf "*"
wget -c --trust-server-names --max-redirect 5 -P /archives/ https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/urusstudio/host-win32-urusstudio.tar.gz/download &>/dev/null
printf "*\n"

cd /archives

RETOK=`md5sum -c ./host-win32-i686-mingw32.tar.gz.md5`
if [ `printf "$RETOK" | grep -ri - -e "mingw32" | wc -l` = 0 ] ; then
    exit 127
fi

RETOK=`md5sum -c ./host-win32-avr-gcc.tar.gz.md5`
if [ `printf "$RETOK" | grep -ri - -e "avr" | wc -l` = 0 ] ; then
    exit 127
fi

RETOK=`md5sum -c ./wx-2.8-urus-msw.tar.gz.md5`
if [ `printf "$RETOK" | grep -ri - -e "msw" | wc -l` = 0 ] ; then
    exit 127
fi

RETOK=`md5sum -c ./host-win32-urusstudio.tar.gz.md5`
if [ `printf "$RETOK" | grep -ri - -e "urusstudio" | wc -l` = 0 ] ; then
    exit 127
fi

RETOK=1
export MSYS=winsymlinks:nativestrict

cd /

rm -f /toolchain_download_ok.txt

if [ $RETOK != 0 ] ; then
    printf "MD5 ok!\n"
    sleep 2
    #/busybox tar -xvzf /archives/host-win32-i686-mingw32.tar.gz -C ./mingw32/ &>/dev/null
    #printf "*"
    /usr/bin/tar -xvzf /archives/host-win32-i686-mingw32.tar.gz -C /mingw32/ &>/dev/null
    printf "*"
    #/busybox tar -xvzf /archives/host-win32-avr-gcc.tar.gz -C ./mingw32/ &>/dev/null
    #printf "*"
    /usr/bin/tar -xvzf /archives/host-win32-avr-gcc.tar.gz -C ./mingw32/ &>/dev/null
    printf "*"
    #/busybox tar -xvzf /archives/wx-2.8-urus-msw.tar.gz -C ./ &>/dev/null
    #printf "*"
    /usr/bin/tar -xvzf /archives/wx-2.8-urus-msw.tar.gz -C /system/urus/ &>/dev/null
    printf "*"
    #/busybox tar -xvzf /archives/host-win32-urusstudio.tar.gz -C ./ &>/dev/null
    #printf "*"
    /busybox cp -f /mingw32/lib/libwinpthread-1.dll ./bin/ &>/dev/null
    printf "*"
    /busybox cp -f /mingw32/lib/libwinpthread-1.dll ./mingw32/bin/ &>/dev/null
    printf "*"
    /usr/bin/tar -xvzf /archives/host-win32-urusstudio.tar.gz -C /system/urus/ &>/dev/null
    printf "*\n\n"
    #/busybox rm -f /mingw32/bin/aclocal*
    #/busybox rm -f /mingw32/bin/automake*
    echo 1 > toolchain_download_ok.txt
    exit 0
else
    #rm -rf /archives
    printf "\n\n\n\nWARNING!\n"
    printf "MD5 doesn't match.\n"
    printf "removing temp dir and stoping intallation!\n\n\n\n"
    sleep 2
    echo 0 > toolchain_download_ok.txt
    exit 127
fi

cd /bin

exit 0
