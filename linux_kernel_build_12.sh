#!/bin/bash

. ./build_env_0.sh

echo "kernel configuration...."

cd source/linux

make ARCH=${OS_ARCH} \
CROSS_COMPILE=${CROSS_CC}- x86_64_defconfig

make ARCH=${OS_ARCH} \
CROSS_COMPILE=${CROSS_CC}-
make ARCH=${OS_ARCH} \
CROSS_COMPILE=${CROSS_CC}- \
INSTALL_MOD_PATH=${OS} modules_install

cp -v arch/x86/boot/bzImage ${OS}/boot/vmlinuz-4.16.3
cp -v System.map ${OS}/boot/System.map-4.16.3
cp -v .config ${OS}/boot/config-4.16.3

echo "kernel build completed"

cd ../..
