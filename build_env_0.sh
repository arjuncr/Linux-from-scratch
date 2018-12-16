#!/bin/bash

echo "basic env for building minimal distro" 

export LJOS=~/lj-os

mkdir -pv ${LJOS}

export LC_ALL=POSIX

export PATH=$PATH:${LJOS}/cross-tools/bin



echo "cross complile env"

unset CFLAGS
unset CXXFLAGS

export LJOS_HOST=$(echo ${MACHTYPE} | sed "s/-[^-]*/-cross/")
export LJOS_TARGET=x86_64-unknown-linux-gnu
export LJOS_CPU=k8
export LJOS_ARCH=$(echo ${LJOS_TARGET} | sed -e 's/-.*//' -e 's/i.86/i386/')
export LJOS_ENDIAN=little



echo "basic env completed successfully"
