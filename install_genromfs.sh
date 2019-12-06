#!/bin/sh
umask 002
wget -c --trust-server-names --max-redirect 5 -P /archives/ https://github.com/UrusTeam/nuttx_tools_origin/raw/master/genromfs-0.5.2.tar.gz &>/dev/null

cd /archives

/busybox tar -xvzf /archives/genromfs-0.5.2.tar.gz &>/dev/null
cd genromfs-0.5.2/
make &>/dev/null && make install &>/dev/null

cd /bin

exit 0
