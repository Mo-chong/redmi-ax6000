#!/bin/bash
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# 修改默认 IP (如果需要，取消注释并修改为你想要的 IP)
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 设置密码为空 (保留和原来一致)
sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/base-files/files/bin/config_generate

echo "DIY script 4: Applied custom system modifications."
