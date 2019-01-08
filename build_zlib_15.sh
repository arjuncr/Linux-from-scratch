#!/bin/bash


. ./build_env_0.sh

echo "building zlib"

cd work/zlib

sed -i 's/-O3/-Os/g' configure
./configure --prefix=/usr --shared
make && make DESTDIR=${LJOS}/ install


mv -v ${LJOS}/usr/lib/libz.so.* ${LJOS}/lib
ln -svf ../../lib/libz.so.1 ${LJOS}/usr/lib/libz.so
ln -svf ../../lib/libz.so.1 ${LJOS}/usr/lib/libz.so.1
ln -svf ../lib/libz.so.1 ${LJOS}/lib64/libz.so.1


echo "completed zlib build"

cd ../../
