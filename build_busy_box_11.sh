#!/bin/bash

. ./build_env_0.sh

echo "building busybox"

cd work/busybox

make CROSS_COMPILE="${LJOS_TARGET}-" defconfig

make CROSS_COMPILE="${LJOS_TARGET}-" menuconfig


make CROSS_COMPILE="${LJOS_TARGET}-"
make CROSS_COMPILE="${LJOS_TARGET}-" \
CONFIG_PREFIX="${LJOS}" install



cp -v examples/depmod.pl ${LJOS}/cross-tools/bin
chmod 755 ${LJOS}/cross-tools/bin/depmod.pl


echo "complete busy box setup"

cd ../..
