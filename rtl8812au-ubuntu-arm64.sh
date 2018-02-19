cd ~/
sudo apt update
sudo apt full-upgrade -y
git clone https://github.com/gordboy/rtl8812au.git
cd rtl8812au/
ARCH=arm64 make
sudo ARCH=arm64 make install
