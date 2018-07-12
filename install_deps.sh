#!/bin/sh

if [ `id -u` != 0 ] ; then
    printf "\n\nPlease run with root permission!\n\n"
    return 127
fi

./update_fstab.sh

BASEPKG="automake gcc g++ libgtk2.0-0 libgtk2.0-dev git gamin libtool autoconf libgamin0 libgamin-dev python2.7 python2.7-dev build-essential \
         libxslt1-dev libxml2-dev python-pip python-dev zlib1g-dev cmake cmake-data wget ca-certificates gtk2-engines:i386 libgtk2.0-0:i386"

YESNOCMD=""

PLATOS=`uname -a`
if [ `printf "$PLATOS" | grep -ri - -e "ubuntu" | wc -l` = 1 ] ; then
    SCOWPWRCMD="apt-get"
    YESNOCMD="-qqy"
    sudo dpkg --add-architecture i386
    sudo add-apt-repository ppa:openjdk-r/ppa -y
    sudo apt-get update YESNOCMD
    sudo apt-get install openjdk-8-jdk YESNOCMD
    echo ubuntu
elif [ `printf "$PLATOS" | grep -ri - -e "debian" | wc -l` = 1 ] ; then
    SCOWPWRCMD="apt-get"
    YESNOCMD="-qqy"
    sudo dpkg --add-architecture i386
    sudo apt-get update YESNOCMD
    sudo apt-get install openjdk-8-jdk YESNOCMD
   echo debian
fi

$SCOWPWRCMD $YESNOCMD install $BASEPKG

pip install --user future lxml
pip install --user empy catkin_pkg

exit 0

