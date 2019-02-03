#!/bin/bash

. ./build_env_0.sh

echo "kernel configuration...."

cd source/linux

make ARCH=${OS_ARCH} \
CROSS_COMPILE=${OS_TARGET}- x86_64_defconfig

make ARCH=${OS_ARCH} \
CROSS_COMPILE=${OS_TARGET}- menuconfig

make ARCH=${OS_ARCH} \
CROSS_COMPILE=${OS_TARGET}-
make ARCH=${OS_ARCH} \
CROSS_COMPILE=${OS_TARGET}- \
INSTALL_MOD_PATH=${OS} modules_install

cp -v arch/x86/boot/bzImage ${OS}/boot/vmlinuz-4.16.3
cp -v System.map ${OS}/boot/System.map-4.16.3
cp -v .config ${OS}/boot/config-4.16.3

 ${CROSS_CC}/cross-tools/bin/depmod.pl \
-F ${OS}/boot/System.map-4.16.3 \
-b ${OS}/lib/modules/4.16.3

echo "kernel build completed"

cd ../..
