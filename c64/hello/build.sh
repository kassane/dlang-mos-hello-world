#!/usr/bin/env bash

ldmd2 -i \
    -betterC \
    -I$PWD/../../modules \
    src/hello.d \
    -mtriple=mos-unknown-unknown \
    --release \
    -O \
    -of=hello.prg \
    -gcc=mos-c64-clang \
    -linker=lld

rm *.o*