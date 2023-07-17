#!/bin/bash

# Update and install required packages
sudo apt-get update
sudo apt-get install -y yt-dlp git python3-pip ffmpeg

# Clone the repository
git clone https://github.com/ssebastianoo/yt-dlp-telegram
cd yt-dlp-telegram

# Install Python dependencies
pip install -r requirements.txt

# Create config.py file
cat << EOF > config.py
token = "6244687393:AAF4I0TZQakaZT4RId8r68q-yc4rfMTM-C0"
logs = None 
max_filesize = 300000000
EOF

# Create a systemd service file
cat << EOF > /etc/systemd/system/yt-dlp-telegram.service
[Unit]
Description=My Python service
After=network.target

[Service]
ExecStart=/usr/bin/python3 /root/yt-dlp-telegram/main.py
WorkingDirectory=/root/yt-dlp-telegram
User=root
Group=root
Restart=always

[Install]
WantedBy=multi-user.target
EOF

# Enable and start the service
systemctl enable yt-dlp-telegram
systemctl start yt-dlp-telegram

# Check the service status
systemctl status yt-dlp-telegram
