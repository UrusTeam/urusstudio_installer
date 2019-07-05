#!/bin/sh

busybox sh -c '

    rm -f ../archives/msys.db
    wget -P ../archives http://repo.msys2.org/msys/i686/msys.db
    if [ -e ../archives/msys.db ] ; then
        printf "http://repo.msys2.org/msys/i686" > ./baserepo
        rm -f ../archives/msys.db
        export REPOURL=$(cat ./baserepo)
        wget -P ../archives http://repo.msys2.org/distrib/i686/msys2-base-i686-20180531.tar.xz
        printf "$REPOURL ok\n"
        exit 0
    fi

    wget -P ../archives http://www2.futureware.at/~nickoe/msys2-mirror/msys/i686/msys.db
    if [ -e ../archives/msys.db ] ; then
        printf "http://www2.futureware.at/~nickoe/msys2-mirror/msys/i686" > ./baserepo
        rm -f ../archives/msys.db
        export REPOURL=$(cat ./baserepo)
        wget -P ../archives http://www2.futureware.at/~nickoe/msys2-mirror/distrib/i686/msys2-base-i686-20180531.tar.xz
        printf "$REPOURL ok\n"
        exit 0
    fi'

exit 127
