#!/bin/bash

. ./build_env_0.sh

echo "creating dir for cross-cc"

install -dv ${CROSS_CC}/cross-tools{,/bin}

echo "created dir for cross complilation"

ls ${CROSS_CC}
