#!/bin/bash

. ./build_env_0.sh

echo "building glibc"

mkdir work/glibc-build
cd work/glibc-build/

echo "libc_cv_forced_unwind=yes" > config.cache
echo "libc_cv_c_cleanup=yes" >> config.cache
echo "libc_cv_ssp=no" >> config.cache
echo "libc_cv_ssp_strong=no" >> config.cache

BUILD_CC="gcc" CC="${OS_TARGET}-gcc" \
AR="${OS_TARGET}-ar" \
RANLIB="${OS_TARGET}-ranlib" CFLAGS="-O2" \
../../source/glibc/configure --prefix=/usr \
--host=${OS_TARGET} --build=${OS_HOST} \
--disable-profile --enable-add-ons --with-tls \
--enable-kernel=2.6.32 --with-__thread \
--with-binutils=${CROSS_CC}/cross-tools/bin \
--with-headers=${OS}/usr/include \
--cache-file=config.cache
make && make install_root=${OS}/install

echo "glibc build completed"

cd ../..
