#!/bin/bash
sudo apt install -y device-tree-compiler swig libpython-dev libssl-dev gcc-aarch64-linux-gnu
cd ~/
mkdir u-boot && cd u-boot
export CROSS_COMPILE=aarch64-linux-gnu-
git clone https://github.com/MarvellEmbeddedProcessors/u-boot-marvell
cd u-boot-marvell/
git checkout -b u-boot-2017.03-armada-17.10 origin/u-boot-2017.03-armada-17.10
wget http://wiki.macchiatobin.net/tiki-download_file.php?fileId=50
git apply 0001-mcbin-u-boot-and-env-on-SD-card-mmc-1.patch
make mvebu_mcbin-88f8040_defconfig
make
