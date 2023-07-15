#!/bin/bash

# به‌روزرسانی لیست بسته‌های موجود
sudo apt update

# نصب Python3 و pip3
sudo apt install -y python3 python3-pip

# نصب ماژول‌های Python مورد نیاز
pip3 install telethon schedule

# نصب git و nano
sudo apt install -y git nano

# کلون کردن مخزن
git clone https://github.com/Damontools32/f2lin/

# ورود به پوشه مخزن
cd f2lin

# باز کردن f2lin.py با nano برای ویرایش
nano f2lin.py
