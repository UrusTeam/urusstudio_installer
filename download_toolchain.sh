#!/bin/sh

wget -c --trust-server-names --max-redirect 5 -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/host-linux32-i686-linux.tar.gz.md5/download
wget -c --trust-server-names --max-redirect 5 -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/host-linux32-i686-linux.tar.gz/download

if [ "$DOWNLOAD_MSWCROSS" = 1 ] ; then
    wget -c --trust-server-names --max-redirect 5 -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/wx-urus/wx-2.8-urus-msw.tar.gz.md5/download
    wget -c --trust-server-names --max-redirect 5 -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/wx-urus/wx-2.8-urus-msw.tar.gz/download
    wget -c --trust-server-names --max-redirect 5 -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/host-linux32-i686-mingw32.tar.gz.md5/download
    wget -c --trust-server-names --max-redirect 5 -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/host-linux32-i686-mingw32.tar.gz/download
fi

wget -c --trust-server-names --max-redirect 5 -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/wx-urus/host-linux32-wx-2.8-urus-gtk2.tar.gz.md5/download
wget -c --trust-server-names --max-redirect 5 -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/wx-urus/host-linux32-wx-2.8-urus-gtk2.tar.gz/download
wget -c --trust-server-names --max-redirect 5 -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/urusstudio/host-linux32-wx2.8-gtk2-urusstudio.tar.gz.md5/download
wget -c --trust-server-names --max-redirect 5 -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/urusstudio/host-linux32-wx2.8-gtk2-urusstudio.tar.gz/download
wget -c --trust-server-names --max-redirect 5 -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/host-linux32-avr-gcc.tar.gz.md5/download
wget -c --trust-server-names --max-redirect 5 -P ../archives https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0/host-linux32-avr-gcc.tar.gz/download

cd ../archives

RETOK=`md5sum -c ./host-linux32-i686-linux.tar.gz.md5`
if [ `printf "$RETOK" | grep -ri - -e "linux" | wc -l` = 0 ] ; then
    exit 127
fi

if [ "$DOWNLOAD_MSWCROSS" = 1 ] ; then
    RETOK=`md5sum -c ./wx-2.8-urus-msw.tar.gz.md5`
    if [ `printf "$RETOK" | grep -ri - -e "msw" | wc -l` = 0 ] ; then
        exit 127
    fi
    RETOK=`md5sum -c ./host-linux32-i686-mingw32.tar.gz.md5`
    if [ `printf "$RETOK" | grep -ri - -e "mingw32" | wc -l` = 0 ] ; then
        exit 127
    fi
fi

RETOK=`md5sum -c ./host-linux32-wx-2.8-urus-gtk2.tar.gz.md5`
if [ `printf "$RETOK" | grep -ri - -e "gtk2" | wc -l` = 0 ] ; then
    exit 127
fi

RETOK=`md5sum -c ./host-linux32-wx2.8-gtk2-urusstudio.tar.gz.md5`
if [ `printf "$RETOK" | grep -ri - -e "urusstudio" | wc -l` = 0 ] ; then
    exit 127
fi

RETOK=`md5sum -c ./host-linux32-avr-gcc.tar.gz.md5`
if [ `printf "$RETOK" | grep -ri - -e "avr" | wc -l` = 0 ] ; then
    exit 127
fi

RETOK=1

cd ../system

if [ $RETOK != 0 ] ; then
    printf "MD5 ok!\n"
    sleep 2
    tar -xvzf ../archives/host-linux32-i686-linux.tar.gz -C /system/urus
    if [ "$DOWNLOAD_MSWCROSS" = 1 ] ; then
        tar -xvzf ../archives/host-linux32-i686-mingw32.tar.gz -C /system/urus
        tar -xvzf ../archives/wx-2.8-urus-msw.tar.gz -C /system/urus
    fi
    tar -xvzf ../archives/host-linux32-wx-2.8-urus-gtk2.tar.gz -C /system/urus
    tar -xvzf ../archives/host-linux32-wx2.8-gtk2-urusstudio.tar.gz -C /system/urus
    tar -xvzf ../archives/host-linux32-avr-gcc.tar.gz -C /system/urus
	export PATH=/system/urus/bin:$PATH
	avr-gcc -v
	i686-urus-linux-gnu-gcc -v
    exit 0
else
    #rm -rf /archives
    printf "\n\n\n\nWARNING!\n"
    printf "MD5 doesn't match.\n"
    printf "removing temp dir and stoping intallation!\n\n\n\n"
    sleep 2
    exit 127
fi
