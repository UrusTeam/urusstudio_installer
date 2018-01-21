#!/bin/sh

wget -c --trust-server-names -P /archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/host-win32-i686-mingw32.tar.gz.md5/download
wget -c --trust-server-names -P /archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/host-win32-i686-mingw32.tar.gz/download

if [ 'md5sum -c /archives/host-win32-i686-mingw32.tar.gz.md5' ] ; then
    printf "MD5 ok!\n"
    sleep 2
    exit 0
else
    #rm -rf /archives
    printf "\n\n\n\nWARNING!\n"
    printf "MD5 doesn't match.\n"
    printf "removing temp dir and stoping intallation!\n\n\n\n"
    sleep 2
    exit 1
fi
