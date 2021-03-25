#!/bin/sh
umask 002

SERVER=https://github.com/UrusTeam/urus_buildroot/releases/download
URLCHANGELOG=https://raw.githubusercontent.com/UrusTeam/urus_buildroot/master/CHANGELOG
OUTPUTPATH=/archives/
export RETOK=0

FILENAMES="
HOST-i686-w64-mingw32-TGT-arm-urus-linux-gnueabihf.tar.xz;/mingw32/
HOST-i686-w64-mingw32-TGT-i686-urus-linux-gnu.tar.xz;/mingw32/
HOST-i686-w64-mingw32-TGT-avr.tar.xz;/mingw32/
HOST-i686-w64-mingw32-TGT-i686-w64-mingw32.tar.xz;/mingw32/
host-i686-w64-mingw32-wx-3.1.4-msw-urusstudio.tar.xz;/system/urus/
host-i686-w64-mingw32-wx-3.1.4-msw-urus.tar.xz;/system/urus/
"

mkdir -p $OUTPUTPATH
cd $OUTPUTPATH

check_changelog()
{
    BITARCH=`uname -m`
    OSKERNEL=`uname -s | awk '{print tolower($0)}' | cut -d_ -f1`
    PLATOS=`cat /etc/os-release 2>/dev/null | grep -rwi - -e "ID" | cut -f2 -d=`

    if [ ! -n $PLATOS ] || [ "x$PLATOS" != "x" ] ; then
    TRIPLETNAME=$OSKERNEL-$PLATOS-$BITARCH
    echo Host: $TRIPLETNAME
    else
    TRIPLETNAME=$OSKERNEL$BITARCH
    echo Host: $TRIPLETNAME
    fi

    rm -f CHANGELOG.txt
    wget -q --show-progress -O CHANGELOG.txt $URLCHANGELOG
    grep -ri CHANGELOG.txt -e "version pre-$TRIPLETNAME:" | awk '{print $3}' | cut -f2 -d: | head -n1 | xargs printf %s > version.txt
}

download_tools()
{
    check_changelog
    cnt=0
    for dltool in $FILENAMES
    do
        cnt=$((cnt+1))
        FILEOUTPUT=$(echo $dltool | sed -r -e 's:(/download)::;' | xargs -I {} printf {} | cut -d\; -f 1)
        printf "%02d: %s\n" $cnt $FILEOUTPUT
        sleep 1
        wget -q --show-progress -c --trust-server-names --max-redirect 5 -O $FILEOUTPUT $URLDOWNLOAD/$(cat version.txt)/$dltool
        wget -q --show-progress -c --trust-server-names --max-redirect 5 -O $FILEOUTPUT.md5 $URLDOWNLOAD/$(cat version.txt)/$dltool.md5
    done
}

check_md5()
{
    cnt=0
    for md5file in $FILENAMES
    do
        cnt=$((cnt+1))
        FILEOUTPUT=$(echo $md5file | sed -r -e 's:(/download)::;' | xargs -I {} printf {} | cut -d\; -f 1)
        printf "%02d: %s\n" $cnt $(printf $FILEOUTPUT)
        export RETOK=`md5sum -c ./$FILEOUTPUT.md5`
        export RETOK=$?
        if [ $RETOK -gt 0 ] ; then
            printf "Failed checksum on: %s\n" $md5file.md5
            du -h $(cygpath -w $(pwd)/$md5file.md5)
            cd /
            echo 0 > toolchain_download_ok.txt
            exit 127
        fi
    done
    printf "MD5 ok!\n"
}

decompress_file()
{
    cnt=0
    for decomfile in $FILENAMES
    do
        cnt=$((cnt+1))
        FILEOUTPUT=$(echo $decomfile | sed -r -e 's:(/download)::;' | xargs -I {} printf {} | cut -d\; -f 1)
        PATHOUTPUT=$(echo $decomfile | sed -r -e 's:(/download)::;' | xargs -I {} printf {} | cut -d\; -f 2)
        printf "%02d: Decompressing %s --> %s\n" $cnt $FILEOUTPUT $PATHOUTPUT
        sleep 1
        /usr/bin/tar -xvJf /archives/$FILEOUTPUT -C $PATHOUTPUT &>/dev/null
    done
}

printf "\nDownloading...\n"
download_tools

printf "\nChecking MD5 files...\n"
check_md5

export MSYS=winsymlinks:nativestrict

cd /

rm -f /toolchain_download_ok.txt

if [ $RETOK -eq 0 ] ; then
    sleep 2
    printf "\n Decompressing files...\n"
    decompress_file
    /busybox cp -f /mingw32/lib/libwinpthread-1.dll ./bin/ &>/dev/null
    printf "*"
    /busybox cp -f /mingw32/lib/libwinpthread-1.dll ./mingw32/bin/ &>/dev/null
    printf "*\n\n"
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
