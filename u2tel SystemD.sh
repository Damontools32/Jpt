#!/bin/bash

# Create the service file
cat << EOF > /etc/systemd/system/u2tel.service
[Unit]
Description=My Python service
After=network.target

[Service]
ExecStart=/usr/bin/python3 /root/u2tel/upload_to_telegram_bot.py
WorkingDirectory=/root/u2tel
User=root
Group=root
Restart=always

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd to recognize the new service
systemctl daemon-reload

# Enable the service to start on boot
systemctl enable u2tel

# Start the service
systemctl start u2tel

# Check the status of the service
systemctl status u2tel
