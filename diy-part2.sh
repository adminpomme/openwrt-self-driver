#!/bin/bash
# 1. 修改默认 IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 2. 扩容：设定 1600MB 根分区 (确保安装后有 >1GB 空闲空间)
sed -i 's/CONFIG_TARGET_ROOTFS_PARTSIZE=.*$/CONFIG_TARGET_ROOTFS_PARTSIZE=1600/g' .config

# 3. 强制启用 IPv6 支持
sed -i 's/0/1/g' package/network/config/ipv6helper/files/etc/config/network 2>/dev/null || true

# 4. 修改固件标识
sed -i 's/OpenWrt/Official-24.10-IPv6-Final/g' package/base-files/files/etc/banner
