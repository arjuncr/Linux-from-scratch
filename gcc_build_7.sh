#!/bin/bash

. ./build_env_0.sh

echo "gcc build ..."

cd source

echo "copying packages...."

cp -r gmp gcc/gmp/

echo "copied gmp"

cp -r mpfr gcc/mpfr/

echo "copied mpfr"

cp -r mpc gcc/mpc

echo "copied mpc"

echo "copy completed"

cd ..

mkdir work/gcc-static

cd work/gcc-static/ 

AR=ar LDFLAGS="-Wl,-rpath,${CROSS_CC}/cross-tools/lib" \
../../source/gcc/configure --prefix=${CROSS_CC}/cross-tools \
--build=${OS_HOST} --host=${OS_HOST} \
--target=${OS_TARGET} \
--with-sysroot=${OS}/target --disable-nls \
--disable-shared \
--with-mpfr-include=$(pwd)/../work/gcc/mpfr/src \
--with-mpfr-lib=$(pwd)/../work/gcc/mpfr/src/.libs \
--without-headers --with-newlib --disable-decimal-float \
--disable-libgomp --disable-libmudflap --disable-libssp \
--disable-threads --enable-languages=c,c++ \
--disable-multilib --with-arch=${OS_CPU}
make all-gcc all-target-libgcc && \
make install-gcc install-target-libgcc
ln -vs libgcc.a `${OS_TARGET}-gcc -print-libgcc-file-name | sed 's/libgcc/&_eh/'`

cd ../..

echo "gcc build completed"
