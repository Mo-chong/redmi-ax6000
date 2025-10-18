#!/bin/bash
#
# Copyright (c) 2019-2024 P3TERX [https://p3terx.com](https://p3terx.com)
#
# Modify default IP (可选, 如果你需要改 IP)
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 设置密码为空 (保留)
sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/base-files/files/bin/config_generate

# 其他所有内容都可以删除，因为我们不再使用 kenzok8 或其他复杂的插件源
