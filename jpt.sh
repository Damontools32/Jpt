#!/bin/bash

# نصب cloud-torrent
curl https://i.jpillora.com/cloud-torrent! | bash

# ایجاد فایل سرویس systemd
cat > /etc/systemd/system/cloud-torrent.service << EOF
[Unit]
Description=cloud-torrent
[Service]
WorkingDirectory=/root/
ExecStart=/usr/local/bin/cloud-torrent --port 2086 --config-path /root/cloud-torrent.json --title "Cloud Torrent by Damon"
Restart=always
RestartSec=3
[Install]
WantedBy=multi-user.target
EOF

# راه اندازی سرویس
systemctl enable cloud-torrent
systemctl start cloud-torrent

# بررسی وضعیت سرویس
systemctl status cloud-torrent￼Enter
