#!/bin/bash
# 进入插件目录
cd openwrt/package

# 1. 拉取 PassWall 及其依赖
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git pw_deps

# 2. 拉取 MosDNS
git clone --depth 1 https://github.com/Iinex/luci-app-mosdns.git

# 3. 拉取 kiddin9 仓库（包含 AdGuardHome 和多拨管理）
git clone --depth 1 https://github.com/kiddin9/openwrt-packages.git kiddin9_pkgs

# 4. 拉取 SmartDNS
git clone --depth 1 https://github.com/pymumu/luci-app-smartdns.git
git clone --depth 1 https://github.com/pymumu/smartdns.git sdns_core
