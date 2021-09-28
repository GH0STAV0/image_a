#!/bin/bash

### every exit != 0 fails the script
set -e
echo "Install Package - on  based ubuntu 20.04 LTS"
DEBIAN_FRONTEND=noninteractive apt-get install -y \
        jq \
        nano \
        psmisc \
        sudo \
        tini \
        wget python3.9 python3.9-dev openssh-server locate nano

echo "Installing ttf-wqy-zenhei"
apt-get install -y ttf-wqy-zenhei software-properties-common \
        xfce4 xfce4-goodies tightvncserver novnc websockify \
        python3-numpy build-essential net-tools curl git \
        software-properties-common
