#!/bin/sh

rm -rf master.zip
wget -O master.zip -c --trust-server-names --max-redirect 5 -P ./ https://github.com/UrusTeam/dfu-programmer/archive/master.zip
unzip -o master.zip
rm -rf master.zip

exit 0
