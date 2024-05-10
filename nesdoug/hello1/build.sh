#!/usr/bin/env bash

mos-nes-nrom-clang chr-rom.s -c

# ldmd2 unrecognized file extension s
ldmd2 -i \
    -betterC \
    -I$PWD/../../modules \
    src/hello.d \
    -mtriple=mos-unknown-unknown \
    --release \
    -O \
    -L-lneslib \
    -of=hello.nes \
    -gcc=mos-nes-nrom-clang \
    chr-rom.o \
    -linker=lld

rm *.o* *.mlb