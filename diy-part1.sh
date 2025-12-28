#!/bin/bash

# 修正：直接操作当前目录下 openwrt 文件夹，不进行 cd 跳转以防找不到路径
mkdir -p openwrt/package/custom

# 1. 拉取 PassWall 及其依赖
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git openwrt/package/custom/luci-app-passwall
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git openwrt/package/custom/passwall_deps

# 2. 拉取 MosDNS
git clone --depth 1 https://github.com/Iinex/luci-app-mosdns.git openwrt/package/custom/luci-app-mosdns

# 3. 拉取 kiddin9 仓库 (包含 AdGuardHome 和多拨)
git clone --depth 1 https://github.com/kiddin9/openwrt-packages.git openwrt/package/custom/kiddin9_pkgs

# 4. 拉取 SmartDNS
git clone --depth 1 https://github.com/pymumu/luci-app-smartdns.git openwrt/package/custom/luci-app-smartdns
git clone --depth 1 https://github.com/pymumu/smartdns.git openwrt/package/custom/smartdns_core
