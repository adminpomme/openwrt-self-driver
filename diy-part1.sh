#!/bin/bash
# 进入 openwrt 目录操作 feeds 配置文件
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' openwrt/feeds.conf.default
sed -i '$a src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' openwrt/feeds.conf.default
sed -i '$a src-git mosdns https://github.com/Iinex/luci-app-mosdns.git;main' openwrt/feeds.conf.default
sed -i '$a src-git kiddin9 https://github.com/kiddin9/openwrt-packages.git;master' openwrt/feeds.conf.default
