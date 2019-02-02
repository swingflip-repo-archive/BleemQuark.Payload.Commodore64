#Old Swingfip Dev Notes

######################################################### The UART Hack #######

### Stage 1 - Set root pass ###
# It appears the root pass is hashed from a random value or firmware version so
# will need to bypass root pass for hack to work. (I will patch out the old
# shadow in the NANDB image to either be NULL pass or set to `commodore64` 
# for root)
# Known Cyphers:
# $1$BhdSMgTM$2S2KNUu7.y5OEOEpnB5p31 (Early Model)
# $1$E6gWbcco$o8AatyNfrmFWR9Tj8cByD/ (Mine (Newer Model)

# Connect FAT32/(EXT4?) formatted USB into joystick USB port 
# Connected UART - Baud Rate = 115200
# Repeatedly send S to interrupt U-Boot
setenv nand_root /dev/sda
boot
insmod /lib/modules/3.4.39/nand.ko 
mount /dev/nandb /mnt
passwd
#commodore64
mv /mnt/etc/shadow /mnt/etc/shadow.old
cp /etc/shadow /mnt/etc
umount /mnt
poweroff # and recycle power OR
#reboot

###############################################################################