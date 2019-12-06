#!/bin/sh

export PATH=$HOME/.local/bin:$PATH
/usr/bin/cp -f /usr/bin/python2 /usr/bin/python

pip2 install --upgrade pip &>/dev/null
printf "*"
pip2 install --user numpy &>/dev/null
printf "*"
pip2 install --user future &>/dev/null
printf "*"
pip2 install --user lxml &>/dev/null
printf "*"
pip2 install --user catkin_pkg &>/dev/null
printf "*"
pip2 install --user empy &>/dev/null
printf "*\n\n"

exit 0
