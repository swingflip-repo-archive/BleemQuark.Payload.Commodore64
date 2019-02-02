#!/bin/sh
./sunxi-fel -l
./sunxi-fel -v uboot ../boot/u-boot-sunxi-with-spl.bin write 0x40007800 ../../../../nand/dump/nanda-2-mod-kmod
