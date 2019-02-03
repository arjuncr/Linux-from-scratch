#!/bin/bash

. ./build_env_0.sh

cp -rf ${OS}/ ${OS}-copy

rm -rfv ${OS}-copy/cross-tools
rm -rfv ${OS}-copy/usr/src/*

FILES="$(ls ${OS}-copy/usr/lib64/*.a)"
for file in $FILES; do
rm -f $file
done

find ${OS}-copy/{,usr/}{bin,lib,sbin} -type f exec sudo strip --strip-debug '{}' ';'
find ${OS}-copy/{,usr/}lib64 -type f -exec sudo strip --strip-debug '{}' ';'

sudo chown -R root:root ${OS}-copy
sudo chgrp 13 ${OS}-copy/var/run/utmp ${OS}-copy/var/log/lastlog
sudo mknod -m 0666 ${OS}-copy/dev/null c 1 3
sudo mknod -m 0600 ${OS}-copy/dev/console c 5 1
sudo chmod 4755 ${OS}-copy/bin/busybox

cd ${OS}-copy/

sudo tar cfJ ../linux_os-build.tar.xz *

echo "build completed"
