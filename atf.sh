#!/bin/bash
cd ~/u-boot/u-boot-marvell
export BL33=$(pwd)/u-boot.bin
cd ..
git clone https://github.com/MarvellEmbeddedProcessors/binaries-marvell
cd binaries-marvell/
git checkout -b binaries-marvell-armada-17.10 origin/binaries-marvell-armada-17.10
export SCP_BL2=$(pwd)/mrvl_scp_bl2_8040.img
cd ..
git clone https://github.com/MarvellEmbeddedProcessors/atf-marvell.git
cd atf-marvell/
git checkout -b atf-v1.3-armada-17.10 origin/atf-v1.3-armada-17.10
cd ..
mkdir mv-ddr && cd mv-ddr/
git clone https://github.com/MarvellEmbeddedProcessors/mv-ddr-marvell.git .
git checkout -b mv_ddr-armada-17.10 origin/mv_ddr-armada-17.10
cd ../atf-marvell/
make USE_COHERENT_MEM=0 LOG_LEVEL=20 MV_DDR_PATH=~/u-boot/mv-ddr PLAT=a80x0_mcbin all fip
