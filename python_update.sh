#!/bin/bash

set -e

current_version=$(python3 -V 2>&1 | awk '{print $2}')
required_version="3.8"

if [[ $(echo -e "$current_version\n$required_version" | sort -V | head -n1) != "$required_version" ]]; then
    sudo apt update
    sudo apt install -y python3.8 python3.8-dev python3.8-distutils python3.8-venv python3-pip
    sudo update-alternatives --auto python3
    sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 100
fi

python3 --version
