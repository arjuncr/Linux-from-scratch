#!/bin/bash

. ./build_env_0.sh

mkdir work/binutils-build

cd work/binutils-build/

../../source/binutil/configure --prefix=${OS}/cross-tools \
--target=${OS_TARGET} --with-sysroot=${OS} \
--disable-nls --enable-shared --disable-multilib
make configure-host && make
ln -sv lib ${OS}/cross-tools/lib64
make install

cp -v ../source/binutil/include/libiberty.h ${OS}/usr/include

cd ../..
