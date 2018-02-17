#!/bin/sh

./update_fstab.sh

BASEPKG="automake gcc libgtk2.0-0 libgtk2.0-dev git gamin libtool autoconf libgamin0 libgamin-dev python2.7 python2.7-dev build-essential \
         libxslt1-dev libxml2-dev python-pip python-dev zlib1g-dev cmake cmake-data"
PLATOS=`uname -a`
if [ `printf "$PLATOS" | grep -ri - -e "ubuntu" | wc -l` = 1 ] ; then
    SCOWPWRCMD='apt-get'
    YESNOCMD='-y --force-yes'
    echo ubuntu
elif [ `printf "$PLATOS" | grep -ri - -e "debian" | wc -l` = 1 ] ; then
    SCOWPWRCMD='apt-get'
    YESNOARG='-y --force-yes'
   echo debian
fi

$SCOWPWRCMD update
$SCOWPWRCMD $YESNOARG install $BASEPKG

pip install --user future lxml
pip install --user empy catkin_pkg
