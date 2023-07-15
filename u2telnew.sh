#!/bin/bash

# Define API environment variables
export API_ID='20307428'
export API_HASH='db1b2a38958c06bc4e99b01d4cfd485c'
export BOT_TOKEN='6213454948:AAG1Sv1lyiOYqkOnR0KpYSbfnjRsyKwk8pk'

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
