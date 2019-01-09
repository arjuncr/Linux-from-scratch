#!/bin/bash

. ./build_env_0.sh


echo "kernal header"

cd source/linux

mkdir ${OS}/usr/include
make mrproper
make ARCH=${OS_ARCH} headers_check && \
make ARCH=${OS_ARCH} INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* ${OS}/usr/include

cd ../..


