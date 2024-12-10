#!/bin/bash

# 工作目录
sudo mkdir -p /mnt/xiaomeng9597
sudo chown "$USER:$GROUPS" /mnt/xiaomeng9597
cd /mnt/xiaomeng9597
syncpath="/mnt/xiaomeng9597/workdir"


# 拉取luci-app-usb-printer软件包
mkdir -p $syncpath/themes/luci-theme-design
wget https://github.com/xiaomeng9597/files/releases/download/files/themes.tar.gz
tar -xvf themes.tar.gz
ls themes
cp -a themes/luci-theme-design/* $syncpath/themes/luci-theme-design
