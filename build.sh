#!/usr/bin/env bash

ROOTPATH=$(pwd)

# C64 examples
cd c64/hello
bash build.sh
ls -lh
cd $ROOTPATH
# cd c64/fibonacci
# bash build.sh
# ls -lh
# cd $ROOTPATH
