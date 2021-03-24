#!/bin/sh
umask 002

SERVER=https://sourceforge.net/projects/urus-buildroot.urus.p/files/v1.0.0
OUTPUTPATH=/archives/

FILENAMES="
host-win32-i686-mingw32.tar.gz
host-win32-avr-gcc.tar.gz
wx-2.8-urus-msw.tar.gz
host-win32-urusstudio.tar.gz
"

FULLFILENAMESPATH="
host-win32-i686-mingw32.tar.gz.md5/download
host-win32-i686-mingw32.tar.gz/download
host-win32-avr-gcc.tar.gz.md5/download
host-win32-avr-gcc.tar.gz/download
wx-urus/wx-2.8-urus-msw.tar.gz.md5/download
wx-urus/wx-2.8-urus-msw.tar.gz/download
urusstudio/host-win32-urusstudio.tar.gz.md5/download
urusstudio/host-win32-urusstudio.tar.gz/download
"

mkdir -p $OUTPUTPATH
cd $OUTPUTPATH

download_tools()
{
    cnt=0
    for dltool in $FULLFILENAMESPATH
    do
        cnt=$((cnt+1))
        FILEOUTPUT=$(echo $dltool | sed -r -e 's:(/download)::;' | xargs -I {} basename {})
        printf "%02d: %s\n" $cnt $FILEOUTPUT
        sleep 1
        wget -c --trust-server-names --max-redirect 5 -O $FILEOUTPUT $SERVER/$dltool &>/dev/null
    done
}

check_md5()
{
    cnt=0
    for md5file in $FILENAMES
    do
        cnt=$((cnt+1))
        printf "%02d: %s\n" $cnt $(printf $md5file)
        RETOK=`md5sum -c ./$md5file.md5`
        RETOK=$?
        if [ $RETOK -gt 0 ] ; then
            printf "Failed checksum on: %s\n" $md5file.md5
            du -h $(cygpath -w $(pwd)/$md5file.md5)
            cd /
            echo 0 > toolchain_download_ok.txt
            exit 127
        fi
    done
}

printf "\nDownloading...\n"
download_tools

printf "\nChecking MD5 files...\n"
check_md5

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
