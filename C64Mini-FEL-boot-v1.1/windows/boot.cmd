sunxi-fel -l
sunxi-fel -v uboot ..\boot\u-boot-sunxi-with-spl.bin write 0x48000000 ..\boot\uImage write 0x43000000  ..\boot\script.bin write 0x43100000 ..\boot\uEnv.txt
