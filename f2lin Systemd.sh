#!/bin/bash

# ساخت فایل سرویس
cat << EOF | sudo tee /etc/systemd/system/f2lin.service
[Unit]
Description=My Python service
After=network.target

[Service]
ExecStart=/usr/bin/python3 /root/f2lin/f2lin.py
WorkingDirectory=/root/f2lin
User=root
Group=root
Restart=always

[Install]
WantedBy=multi-user.target
EOF

# فعال‌سازی سرویس
sudo systemctl enable f2lin

# شروع به کار سرویس
sudo systemctl start f2lin

# وضعیت سرویس
sudo systemctl status f2lin
