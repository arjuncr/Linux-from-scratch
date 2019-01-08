#!/bin/bash


. ./build_env_0.sh

mkdir binutils-build

cd binutils-build/

../work/binutil/configure --prefix=${LJOS}/cross-tools \
--target=${LJOS_TARGET} --with-sysroot=${LJOS} \
--disable-nls --enable-shared --disable-multilib
make configure-host && make
ln -sv lib ${LJOS}/cross-tools/lib64
make install

cp -v ../work/binutil/include/libiberty.h ${LJOS}/usr/include

cd ..
