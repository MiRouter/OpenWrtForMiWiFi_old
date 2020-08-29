#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
cd package
git clone https://github.com/jerrykuku/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr
git clone https://github.com/Lienol/openwrt-package
git clone https://github.com/tty228/luci-app-serverchan
git clone https://github.com/cnzd/luci-app-koolproxyR
mkdir -p luci-app-diskman && \
mkdir -p parted && \
wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Makefile -O luci-app-diskman/Makefile
wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Parted.Makefile -O parted/Makefile
