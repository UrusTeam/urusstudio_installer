#!/bin/sh
umask 002
wget -c --trust-server-names --max-redirect 5 -P /archives/ https://github.com/UrusTeam/nuttx_tools_origin/raw/master/genromfs-0.5.2.tar.gz

cd /archives

/busybox tar -xvzf /archives/genromfs-0.5.2.tar.gz
cd genromfs-0.5.2/
make && make install

cd /bin

exit 0
