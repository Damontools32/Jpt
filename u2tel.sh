#!/bin/bash

# Update system packages
sudo apt update

# Install git
apt-get install git

# Install Python3 and pip
sudo apt install python3 python3-pip

# Install telethon
pip3 install telethon

# Clone the GitHub repository
git clone https://github.com/Damontools32/u2tel/

# Navigate into the cloned directory
cd u2tel

