#!/bin/bash

NASM=nasm
mkdir build
$NASM -f bin -o build/boot.bin boot/boot.asm
dd if=/dev/zero of=out/astraos.img bs=512 count=2880
dd if=build/boot.bin  of=build/astraos.img bs=512 count=1  conv=notrunc