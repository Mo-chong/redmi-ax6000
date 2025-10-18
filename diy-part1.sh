#!/bin/bash
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# 清理掉旧的 feeds.conf.default 中的 kenzok8 源，以防万一
sed -i '/kenzok8/d' feeds.conf.default

#
# --- 从这里开始，精确添加你需要的插件 ---
#

# 1. MosDNS: 用于 DNS 分流和防污染
# 注意：v5 版本是目前的主流和推荐版本
rm -rf feeds/packages/net/mosdns
rm -rf feeds/luci/applications/luci-app-mosdns
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns

# 2. AdGuardHome: 广告拦截与隐私保护
# ImmortalWrt 官方源自带的版本通常足够新，这一步通常可以省略。
# 如果你确认需要手动替换为最新版，可以取消下面的注释。
# rm -rf feeds/packages/net/adguardhome
# svn export https://github.com/immortalwrt/packages/trunk/net/adguardhome feeds/packages/net/adguardhome

# 3. Argon 主题: 一个流行的 LuCI 界面主题
# rm -rf feeds/luci/themes/luci-theme-argon
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config

# 4. Passwall: 科学上网插件 (如果你需要)
# git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages
# git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall

#
# --- 插件添加结束 ---
#
# 注意:
# - `git clone` 的目标路径是 `package/` 目录，这是最稳定的一种方式。
# - 在添加前，建议用 `rm -rf` 命令确保清理掉可能存在的旧版本。
#
