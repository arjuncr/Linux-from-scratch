#!/bin/bash

. ./build_env_0.sh

echo "building boot"

cd source/clfs-embedded-bootscripts/

make DESTDIR=${OS}/install-bootscripts
ln -sv ../rc.d/startup ${OS}/etc/init.d/rcS

echo "build boot completed"

cd ../../
