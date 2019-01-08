#!/bin/bash

. ./build_env_0.sh

echo "gcc build ..."

cd work

echo "copying packages...."

cp -r gmp gcc/gmp/

echo "copied gmp"

cp -r mpfr gcc/mpfr/

echo "copied mpfr"

cp -r mpc gcc/mpc

echo "copied mpc"

echo "copy completed"

cd ..

mkdir gcc-static

cd gcc-static/ 

AR=ar LDFLAGS="-Wl,-rpath,${LJOS}/cross-tools/lib" \
../work/gcc/configure --prefix=${LJOS}/cross-tools \
--build=${LJOS_HOST} --host=${LJOS_HOST} \
--target=${LJOS_TARGET} \
--with-sysroot=${LJOS}/target --disable-nls \
--disable-shared \
--with-mpfr-include=$(pwd)/../work/gcc/mpfr/src \
--with-mpfr-lib=$(pwd)/mpfr/src/.libs \
--without-headers --with-newlib --disable-decimal-float \
--disable-libgomp --disable-libmudflap --disable-libssp \
--disable-threads --enable-languages=c,c++ \
--disable-multilib --with-arch=${LJOS_CPU}
make all-gcc all-target-libgcc && \
make install-gcc install-target-libgcc
ln -vs libgcc.a `${LJOS_TARGET}-gcc -print-libgcc-file-name | sed 's/libgcc/&_eh/'`

echo "gcc build completed"
