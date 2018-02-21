#!/bin/bash
sudo apt install -y ubuntu-dev-tools sed make binutils build-essential gcc g++ bash patch gzip bzip2 perl tar cpio python unzip rsync libncurses5*
cd ~/
mkdir -p toolchain
cd toolchain/
wget https://releases.linaro.org/components/toolchain/binaries/5.5-2017.10/aarch64-linux-gnu/gcc-linaro-5.5.0-2017.10-x86_64_aarch64-linux-gnu.tar.xz
tar -xvf gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu.tar.xz
export CROSS_COMPILE=/opt/gcc-linaro-5.5.0-2017.10-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
