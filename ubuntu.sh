#!/bin/bash
cd ~/
mkdir ubuntu
cd ubuntu
wget http://cdimage.ubuntu.com/releases/16.04.3/release/ubuntu-16.04.3-server-arm64.iso
mkdir temp
sudo mount -o loop ubuntu-16.04.3-server-arm64.iso temp/
sudo unsquashfs -d rootfs/ temp/install/filesystem.squashfs
sudo cp ~/linux-marvell/arch/arm64/boot/Image rootfs/boot/
sudo cp ~/linux-marvell/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtb rootfs/boot/
sudo tar -cjvf rootfs.tar.bz2 -C rootfs/ .
sudo chown $LOGNAME rootfs.tar.bz2
sudo umount temp/


