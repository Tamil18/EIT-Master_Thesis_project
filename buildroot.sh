cd ~/
git clone https://github.com/MarvellEmbeddedProcessors/buildroot-marvell
cd buildroot-marvell
git checkout buildroot-2015.11-16.08
make mvebu_armv8_le_defconfig
make menuconfig
patch -p1 -i ~/EIT-Master_Thesis_project/patch-buildroot
make
