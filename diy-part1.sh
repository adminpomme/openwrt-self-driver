#!/bin/bash

# 确保进入 openwrt 目录执行（如果 build.yml 已经 cd 了则此步双保险）
[ -d openwrt ] && cd openwrt

# 创建自定义插件存放目录
mkdir -p package/custom
cd package/custom

# 1. 拉取 PassWall 及其依赖
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git pw_deps

# 2. 拉取 MosDNS
git clone --depth 1 https://github.com/Iinex/luci-app-mosdns.git

# 3. 拉取 kiddin9 仓库 (包含 AdGuardHome 和多拨)
git clone --depth 1 https://github.com/kiddin9/openwrt-packages.git kiddin9_pkgs

# 4. 拉取 SmartDNS
git clone --depth 1 https://github.com/pymumu/luci-app-smartdns.git
git clone --depth 1 https://github.com/pymumu/smartdns.git sdns_core
