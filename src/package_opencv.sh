#!/bin/bash

### every exit != 0 fails the script
#set -e
echo "Install Package - on  based ubuntu 20.04 LTS"
DEBIAN_FRONTEND=noninteractive apt-get install -y libsm6 libxrender1 libfontconfig1 tor gedit
pip3 install numpy --upgrade
pip3 install image pandas Pillow==8.2.0 opencv-python easyocr #pytesseract #cv2
pip3 install pytesseract






apt-get clean
apt autoclean -y \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/*
