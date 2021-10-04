#!/bin/bash

### every exit != 0 fails the script
set -e
mkdir -p /root/EXTRAT/
echo "Install Package - on  based ubuntu 20.04 LTS"
echo "Installing  dbus-x11 xauth xinit x11-xserver-utils xdg-utils"
#apt-get install -y dbus-x11 xauth xinit x11-xserver-utils xdg-utils--no-cache=true
wget http://launchpadlibrarian.net/494460182/xfwm4_4.14.5-1_amd64.deb
dpkg -i xfwm4_4.14.5-1_amd64.deb
apt update
DEBIAN_FRONTEND=noninteractive apt-get install -y --fix-missing  supervisor pwgen openvpn autocutsel xfwm4=4.14.5-1

echo "Install Package -firefox-53.0b9.tar.bz2"
wget https://ftp.mozilla.org/pub/firefox/releases/53.0b9/linux-x86_64/en-US/firefox-53.0b9.tar.bz2 && tar -xf firefox-53.0b9.tar.bz2 -C /root/EXTRAT
echo "Install bash color"
echo "export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> ~/.bashrc
chmod +x /root/install_add/geckodriver && cp /root/install_add/geckodriver /usr/bin/geckodriver13
