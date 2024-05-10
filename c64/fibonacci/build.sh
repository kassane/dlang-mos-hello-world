#!/usr/bin/env bash

ldmd2 -i \
    -betterC \
    -I ../../modules/common \
    hello.d \
    -mtriple=mos-unknown-unknown \
    --release \
    -O \
    -of=fib.prg \
    -gcc=mos-c64-clang \
    -linker=lld

rm *.o*