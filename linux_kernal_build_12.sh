#!/bin/bash


. ./build_env_0.sh

echo "kernal configuration...."

cd work/linux

make ARCH=${LJOS_ARCH} \
CROSS_COMPILE=${LJOS_TARGET}- x86_64_defconfig

make ARCH=${LJOS_ARCH} \
CROSS_COMPILE=${LJOS_TARGET}- menuconfig

make ARCH=${LJOS_ARCH} \
CROSS_COMPILE=${LJOS_TARGET}-
make ARCH=${LJOS_ARCH} \
CROSS_COMPILE=${LJOS_TARGET}- \
INSTALL_MOD_PATH=${LJOS} modules_install



cp -v arch/x86/boot/bzImage ${LJOS}/boot/vmlinuz-4.16.3
cp -v System.map ${LJOS}/boot/System.map-4.16.3
cp -v .config ${LJOS}/boot/config-4.16.3

${LJOS}/cross-tools/bin/depmod.pl \
-F ${LJOS}/boot/System.map-4.16.3 \
-b ${LJOS}/lib/modules/4.16.3

echo "kernal build completed"

cd ../..

