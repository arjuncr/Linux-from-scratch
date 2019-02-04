#!/bin/bash

. ./build_env_0.sh

echo "gcc final build"

mkdir work/gcc-build

cd work/gcc-build/

AR=ar LDFLAGS="-Wl,-rpath,${CROSS_CC}/cross-tools/lib" \
../../source/gcc/configure --prefix=${CROSS_CC}/cross-tools \
--build=${OS_HOST} --target=${OS_TARGET} \
--host=${OS_HOST} --with-sysroot=${OS} \
--disable-nls --enable-shared \
--enable-languages=c,c++ --enable-c99 \
--enable-long-long \
--with-mpfr-include=$(pwd)/../work/gcc/mpfr/src \
--with-mpfr-lib=$(pwd)/../work/gcc/mpfr/src/.libs \
--disable-multilib --with-arch=${OS_CPU}
make && make install

cp -v ${CROSS_CC}/cross-tools/${OS_TARGET}/lib64/libgcc_s.so.1 ${OS}/lib64

echo "gcc final build completed"

echo "cross compiler env"

export CC="${OS_TARGET}-gcc"
export CXX="${OS_TARGET}-g++"
export CPP="${OS_TARGET}-gcc -E"
export AR="${OS_TARGET}-ar"
export AS="${OS_TARGET}-as"
export LD="${OS_TARGET}-ld"
export RANLIB="${OS_TARGET}-ranlib"
export READELF="${OS_TARGET}-readelf"
export STRIP="${OS_TARGET}-strip"

echo "cross compiler env completed"

cd ../..
