#!/bin/sh

wget -c --trust-server-names -P /archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/host-win32-i686-mingw32.tar.gz.md5/download
wget -c --trust-server-names -P /archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/host-win32-i686-mingw32.tar.gz/download

cd /archives

RETOK=`md5sum -c ./host-win32-i686-mingw32.tar.gz.md5`
RETOK=`printf "$RETOK" | grep -rwi - -e "ok" | wc -l`

cd /

if [ $RETOK != 0 ] ; then
    printf "MD5 ok!\n"
    sleep 2
    /busybox tar -xvzf /archives/host-win32-i686-mingw32.tar.gz -C mingw32
    exit 0
else
    #rm -rf /archives
    printf "\n\n\n\nWARNING!\n"
    printf "MD5 doesn't match.\n"
    printf "removing temp dir and stoping intallation!\n\n\n\n"
    sleep 2
    exit 127
fi

cd /bin
