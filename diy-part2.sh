#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
# git clone https://github.com/EOYOHOO/UA2F.git package/UA2F
# git clone https://github.com/EOYOHOO/rkp-ipid.git package/rkp-ipid

git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/luci-app-ddns-go
git clone --depth=1 https://github.com/vernesong/OpenClash.git package/OpenClash
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
mv -f files/mt7981b-cudy-tr3000-v1.dts target/linux/mediatek/dts/