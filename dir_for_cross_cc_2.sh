#!/bin/bash

. ./build_env_0.sh

echo "creating dir for cross-cc"
install -dv ${OS}/cross-tools{,/bin}

echo "created dir for cross complilation"

ls ${OS}
