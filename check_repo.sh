#!/bin/sh

    rm -rf ../msys32
    rm -f .stopinstall

    if [ -e ../system_temp ] ; then
        printf "\n";
        tput setaf 3;
        printf "  WARNING: system_temp path exist!\n\n";
        tput setaf 7;
        printf "Remove it? (y/n): "
        read rmtmp
        if [ "$rmtmp" = "y" ] ; then
            rm -rf ../system_temp
            printf "\nsystem_temp removed!\n\n"
        else
            printf "1" > .stopinstall
            printf "\n\n"
            exit 1
        fi
    fi

    rm -f ../archives/msys.db
    wget -P ../archives https://repo.msys2.org/msys/i686/msys.db &>/dev/null
    if [ -e ../archives/msys.db ] ; then
        printf "https://repo.msys2.org/msys/i686" > ./baserepo
        rm -f ../archives/msys.db
        export REPOURL=$(cat ./baserepo)
        wget -P ../archives https://repo.msys2.org/distrib/i686/msys2-base-i686-20190523.tar.xz &>/dev/null
        printf "Main repo ok\n\n"
        exit 0
    fi

    wget -P ../archives https://www2.futureware.at/~nickoe/msys2-mirror/msys/i686/msys.db &>/dev/null
    if [ -e ../archives/msys.db ] ; then
        printf "https://www2.futureware.at/~nickoe/msys2-mirror/msys/i686" > ./baserepo
        rm -f ../archives/msys.db
        export REPOURL=$(cat ./baserepo)
        wget -P ../archives https://www2.futureware.at/~nickoe/msys2-mirror/distrib/i686/msys2-base-i686-20190523.tar.xz &>/dev/null
        printf "External repo ok\n\n"
        exit 0
    fi

exit 127
