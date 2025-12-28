#!/bin/bash
# 进入 package 目录
cd openwrt/package

# 1. 强行拉取 PassWall (包括核心包)
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git passwall_deps

# 2. 强行拉取 MosDNS
git clone --depth 1 https://github.com/Iinex/luci-app-mosdns.git

# 3. 强行拉取 AdGuardHome 及常用插件源 (kiddin9)
git clone --depth 1 https://github.com/kiddin9/openwrt-packages.git extra_pkgs
