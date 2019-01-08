#!/bin/bash

. ./build_env_0.sh

echo "building boot"

cd work/clfs-embedded-bootscripts/

make DESTDIR=${LJOS}/ install-bootscripts
ln -sv ../rc.d/startup ${LJOS}/etc/init.d/rcS

echo "build boot completed"

cd ../../

