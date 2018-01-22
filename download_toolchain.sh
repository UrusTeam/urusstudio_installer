#!/bin/sh

wget -c --trust-server-names -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/host-linux32-i686-linux.tar.gz.md5/download
wget -c --trust-server-names -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/host-linux32-i686-linux.tar.gz/download
wget -c --trust-server-names -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/wx-urus/wx-2.8-urus-msw.tar.gz.md5/download
wget -c --trust-server-names -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/wx-urus/wx-2.8-urus-msw.tar.gz/download

cd ../archives

RETOK=`md5sum -c ./host-linux32-i686-linux.tar.gz.md5`
if [ `printf "$RETOK" | grep -ri - -e "linux" | wc -l` = 0 ] ; then
    exit 127
fi

RETOK=`md5sum -c ./wx-2.8-urus-msw.tar.gz.md5`
if [ `printf "$RETOK" | grep -ri - -e "msw" | wc -l` = 0 ] ; then
    exit 127
fi

RETOK=1

cd ../system

if [ $RETOK != 0 ] ; then
    printf "MD5 ok!\n"
    sleep 2
    tar -xvzf ../archives/host-linux32-i686-linux.tar.gz
    tar -xvzf ../archives/wx-2.8-urus-msw.tar.gz
    exit 0
else
    #rm -rf /archives
    printf "\n\n\n\nWARNING!\n"
    printf "MD5 doesn't match.\n"
    printf "removing temp dir and stoping intallation!\n\n\n\n"
    sleep 2
    exit 127
fi
