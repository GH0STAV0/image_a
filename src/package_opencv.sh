#!/bin/bash

### every exit != 0 fails the script
set -e
echo "Install Package - on  based ubuntu 20.04 LTS"
DEBIAN_FRONTEND=noninteractive apt-get install -y libsm6 libxrender1 libfontconfig1
pip3 install numpy --upgrade
pip3 install image pandas Pillow==8.2.0 opencv-python easyocr cv2






apt-get clean
apt autoclean -y \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/*
