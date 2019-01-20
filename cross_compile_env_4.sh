#!/bin/bash

. ./build_env_0.sh

echo "cross complile env"

unset CFLAGS
unset CXXFLAGS

export OS_HOST=$(echo ${MACHTYPE} | sed "s/-[^-]*/-cross/")
export OS_TARGET=x86_64-unknown-linux-gnu
export OS_CPU=k8
export OS_ARCH=$(echo ${OS_TARGET} | sed -e 's/-.*//' -e 's/i.86/i386/')
export OS_ENDIAN=little
