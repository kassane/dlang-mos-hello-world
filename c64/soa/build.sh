#!/usr/bin/env bash

ldmd2 -i \
    -I$PWD/../../modules \
    src/soa_example.d \
    -mtriple=mos-unknown-unknown \
    -release \
    -O \
    -betterC \
    -of=soa.prg \
    -gcc=mos-c64-clang \
    -linker=lld

rm *.o*