sudo apt install subversion build-essential libncurses5-dev zlib1g-dev gawk git ccache gettext libssl-dev xsltproc file
sudo mkdir -p /opt/kernel/ && cd /opt/kernel/
sudo git clone https://github.com/MarvellEmbeddedProcessors/openwrt-kernel.git -b openwrt_17.10_release
sudo mkdir -p /opt/openwrt && cd /opt/openwrt
sudo git clone https://github.com/MarvellEmbeddedProcessors/openwrt-dd.git -b openwrt_17.10_release
sudo chown -R $(whoami):$(id -gn) /opt/kernel/
sudo chown -R $(whoami):$(id -gn) /opt/openwrt/openwrt-dd/
./openwrt-dd/scripts/feeds update -a
./openwrt-dd/scripts/feeds install -a
cd openwrt-dd
make menuconfig
wait && make
