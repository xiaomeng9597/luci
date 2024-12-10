#!/bin/bash

# 工作目录
sudo mkdir -p /mnt/xiaomeng9597
sudo chown "$USER:$GROUPS" /mnt/xiaomeng9597
cd /mnt/xiaomeng9597
syncpath="/mnt/xiaomeng9597/workdir"


# 拉取luci-app-usb-printer软件包
mkdir -p $syncpath/themes/luci-theme-design
git clone https://github.com/coolsnowwolf/luci
cd luci
git checkout openwrt-23.05
git pull
ls luci/themes
cp -a luci/themes/luci-theme-design/* $syncpath/themes/luci-theme-design
