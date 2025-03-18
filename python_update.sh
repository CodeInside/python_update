#!/bin/bash

set -e

sudo apt update
sudo apt install -y python3.8 python3.8-dev python3.8-distutils python3.8-venv python3-pip

sudo update-alternatives --auto python3
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 100

python3 --version
