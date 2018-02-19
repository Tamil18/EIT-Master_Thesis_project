cd ~/
git clone https://github.com/MarvellEmbeddedProcessors/linux-marvell
cd linux-marvell
git checkout linux-4.4.52-armada-17.10
patch -p1 -i ~/EIT-Master_Thesis_project/patch-1
export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
make mvebu_v8_lsp_defconfig
make
