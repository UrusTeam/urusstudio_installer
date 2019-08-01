#! /bin/sh

export PATH=$HOME/.local/bin:$PATH
/usr/bin/cp -f /usr/bin/python2 /usr/bin/python

pip2 install --upgrade pip
pip2 install --user numpy
pip2 install --user future
pip2 install --user lxml
pip2 install --user catkin_pkg
pip2 install --user empy

exit 0
