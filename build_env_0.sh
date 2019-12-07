#!/bin/bash

echo "basic env for building minimal distro" 

export BASEDIR=`realpath --no-symlinks $PWD`

export OS=$BASEDIR/image

mkdir -pv ${OS}

export LC_ALL=POSIX

export PATH=$PATH:${BASEDIR}/cross-tools/bin

export CROSS_CC=${BASEDIR}/cross-tools/bin

echo "cross complile env"

unset CFLAGS
unset CXXFLAGS

export OS_HOST=$(echo ${MACHTYPE} | sed "s/-[^-]*/-cross/")
export OS_TARGET=x86_64-unknown-linux-gnu
export OS_CPU=k8
export OS_ARCH=$(echo ${OS_TARGET} | sed -e 's/-.*//' -e 's/i.86/i386/')
export OS_ENDIAN=little

echo "basic env completed successfully"
