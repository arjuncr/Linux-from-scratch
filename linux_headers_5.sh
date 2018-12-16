#!/bin/bash

. ./build_env_0.sh


echo "kernal header"

cd work/linux

mkdir ${LJOS}/usr/include
make mrproper
make ARCH=${LJOS_ARCH} headers_check && \
make ARCH=${LJOS_ARCH} INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* ${LJOS}/usr/include

cd ../..


