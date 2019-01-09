#!/bin/bash

. ./build_env_0.sh

echo "building busybox"

cd source/busybox

make CROSS_COMPILE="${OS_TARGET}-" defconfig
make CROSS_COMPILE="${OS_TARGET}-" menuconfig

make CROSS_COMPILE="${OS_TARGET}-"
make CROSS_COMPILE="${OS_TARGET}-" \
CONFIG_PREFIX="${LJOS}" install

cp -v examples/depmod.pl ${OS}/cross-tools/bin
chmod 755 ${OS}/cross-tools/bin/depmod.pl

echo "complete busy box setup"

cd ../..
