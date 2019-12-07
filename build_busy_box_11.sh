#!/bin/bash

. ./build_env_0.sh

echo "building busybox"

cd source/busybox

make CROSS_COMPILE=${CROSS_CC}-gcc defconfig

make CROSS_COMPILE=${CROSS_CC}-gcc
make CROSS_COMPILE=${CROSS_CC}-gcc \
CONFIG_PREFIX="${LJOS}" install

cp -v examples/depmod.pl cross-tools/bin
chmod 755 cross-tools/bin/depmod.pl

echo "complete busy box setup"

cd ../..
