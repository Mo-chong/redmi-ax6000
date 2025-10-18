#!/bin/bash
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# 清理可能存在的旧 feed 定义 (如果之前有修改过 feeds.conf.default)
# sed -i '/kenzok8/d' feeds.conf.default # 保留这一行，如果你之前确实用了 kenzok8

# 添加 MosDNS 及其数据源
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

# Argon 主题和配置 (如果默认 feeds 中没有或版本太旧，可以取消注释)
# rm -rf feeds/luci/themes/luci-theme-argon
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config

# 如果你需要 Passwall 或其他来自第三方仓库的插件，在这里添加它们的 git clone 命令
# git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages
# git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall

echo "DIY script 3: Added custom packages."
