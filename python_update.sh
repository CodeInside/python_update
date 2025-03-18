#!/bin/bash

current_version=$(python3 -V 2>&1 | awk '{print $2}')
required_version="3.8"
os_version=$(lsb_release -rs)

if [[ "$os_version" == "18."* ]]; then
    if [[ $(echo -e "$current_version\n$required_version" | sort -V | head -n1) != "$required_version" ]]; then
        sudo apt update
        sudo apt install -y python3.8 python3.8-dev python3.8-distutils python3.8-venv python3-pip python3.8-apt
        sudo update-alternatives --auto python3
        sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 100
    fi
fi

python3 --version
