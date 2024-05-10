#!/usr/bin/env bash

ldmd2 -i \
    -betterC \
    -I$PWD/../../modules \
    src/fib.d \
    -mtriple=mos-unknown-unknown \
    --release \
    -O \
    -L-lprintf_flt \
    -of=fib.prg \
    -gcc=mos-c64-clang \
    -linker=lld

rm *.o*