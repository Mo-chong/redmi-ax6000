#!/bin/bash
#
# Copyright (c) 2019-2024 P3TERX [https://p3terx.com](https://p3terx.com)
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# 设置密码为空
sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/base-files/files/bin/config_generate

# (可选) 修改默认 IP 地址
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

#
# --- 其他所有冲突解决脚本都可以删除 ---
#
