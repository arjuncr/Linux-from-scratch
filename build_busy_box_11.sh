#!/bin/bash

. ./build_env_0.sh

echo "building busybox"

cd source/busybox

make CROSS_COMPILE=${CROSS_CC}- defconfig

make CROSS_COMPILE=${CROSS_CC}-
make CROSS_COMPILE=${CROSS_CC}- \
CONFIG_PREFIX="${LJOS}" install

echo "complete busy box setup"

cd ../..
