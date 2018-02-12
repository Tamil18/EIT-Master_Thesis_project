cd ~/Downloads
sudo apt update & full-upgrade
wget http://ftp.acc.umu.se/pub/GNOME/sources/aravis/0.5/aravis-0.5.11.tar.xz
tar xf aravis-0.5.11.tar.xz
cd aravis-0.5.11
sudo apt install libgtk2.0-dev libxml2-dev libusb-1.0-0-dev libcap-ng-dev libaudit-dev libnotify-dev libgtk-3-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgirepository1.0-dev gstreamer1.0-plugins-bad intltool
./configure --enable-usb --enable-packet-socket --enable-viewer --enable-gst-plugin --enable-fast-heartbeat --enable-asan --enable-introspection=yes --enable-gtk-doc-pdf
make
sudo make install
sudo ldconfig

