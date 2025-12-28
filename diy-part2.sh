#!/bin/bash
# 注意：此脚本在 openwrt 目录下执行

# 1. 修改默认 IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 2. 扩容 1600MB
sed -i 's/CONFIG_TARGET_ROOTFS_PARTSIZE=.*$/CONFIG_TARGET_ROOTFS_PARTSIZE=1600/g' .config

# 3. 开启 IPv6
sed -i 's/0/1/g' package/network/config/ipv6helper/files/etc/config/network 2>/dev/null || true

# 4. 修改标识
sed -i 's/OpenWrt/Official-24.10-Full/g' package/base-files/files/etc/banner
