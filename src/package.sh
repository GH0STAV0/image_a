#!/usr/bin/env bash
### every exit != 0 fails the script
set -e
set -u

echo "Install Package - on  based ubuntu 20.04 LTS"

DEBIAN_FRONTEND=noninteractive apt-get install -y \
        apt-utils jq \
        nano \
        psmisc \
        sudo \
        tini \
        wget python3.9 python3.9-dev
