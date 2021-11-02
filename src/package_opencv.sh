#!/bin/bash

### every exit != 0 fails the script
set -e
echo "Install Package - on  based ubuntu 20.04 LTS"
#pip3 install image pandas Pillow==8.2.0  cv2 easyocr






apt-get clean
apt autoclean -y \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/*
