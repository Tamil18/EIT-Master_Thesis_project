#!/bin/bash
sudo apt install -y which sed make binutils build-essential gcc g++ bash patch gzip bzip2 perl tar cpio python unzip rsync ncurses5
cd ~/
mkdir -p toolchain
cd toolchain/
wget https://releases.linaro.org/components/toolchain/binaries/5.3-2016.05/aarch64-linux-gnu/gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu.tar.xz
tar -xvf gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu.tar.xz
export PATH=$PATH:~/toolchain/gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu/bin
