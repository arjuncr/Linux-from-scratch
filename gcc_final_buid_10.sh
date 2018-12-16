#!/bin/bash

. ./build_env_0.sh

echo "gcc final build"


mkdir gcc-build
cd gcc-build/




AR=ar LDFLAGS="-Wl,-rpath,${LJOS}/cross-tools/lib" \
../work/gcc/configure --prefix=${LJOS}/cross-tools \
--build=${LJOS_HOST} --target=${LJOS_TARGET} \
--host=${LJOS_HOST} --with-sysroot=${LJOS} \
--disable-nls --enable-shared \
--enable-languages=c,c++ --enable-c99 \
--enable-long-long \
--with-mpfr-include=$(pwd)/../work/gcc/mpfr/src \
--with-mpfr-lib=$(pwd)/mpfr/src/.libs \
--disable-multilib --with-arch=${LJOS_CPU}
make && make install
cp -v ${LJOS}/cross-tools/${LJOS_TARGET}/lib64/libgcc_s.so.1 ${LJOS}/lib64


echo "gcc final build completed"


echo "cross compiler env"

export CC="${LJOS_TARGET}-gcc"
export CXX="${LJOS_TARGET}-g++"
export CPP="${LJOS_TARGET}-gcc -E"
export AR="${LJOS_TARGET}-ar"
export AS="${LJOS_TARGET}-as"
export LD="${LJOS_TARGET}-ld"
export RANLIB="${LJOS_TARGET}-ranlib"
export READELF="${LJOS_TARGET}-readelf"
export STRIP="${LJOS_TARGET}-strip"


echo "cross compiler env completed"


