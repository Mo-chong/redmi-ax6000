#!/bin/bash
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# 清理掉旧的、冲突的 feed 定义
sed -i '/kenzok8/d' feeds.conf.default

# 添加你需要的独立插件源
# MosDNS
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

# AdGuardHome - immortalwrt/packages 中通常自带，无需额外添加
# 如果编译时找不到 adguardhome，再取消下面这行的注释
# svn export https://github.com/immortalwrt/packages/trunk/net/adguardhome feeds/packages/net/adguardhome

# Argon 主题 (通常也自带，无需添加)
# 如果需要最新版，可以取消注释
# rm -rf feeds/luci/themes/luci-theme-argon
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config

# 其他你可能需要的插件，都用类似 'git clone' 的方式独立添加
# 例如添加 Passwall (如果需要)
# git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages
# git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
