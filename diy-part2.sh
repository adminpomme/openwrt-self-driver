#!/bin/bash

# 1. 修改默认 IP 为 192.168.10.1
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 2. 扩容：设定 1600MB 分区 (确保 1G+ 空闲)
sed -i 's/CONFIG_TARGET_ROOTFS_PARTSIZE=.*$/CONFIG_TARGET_ROOTFS_PARTSIZE=1600/g' .config

# 3. 开启 IPv6 RA 服务
sed -i 's/0/1/g' package/network/config/ipv6helper/files/etc/config/network 2>/dev/null || true

# 4. 修改 Banner 标识
sed -i 's/OpenWrt/Official-24.10-Full/g' package/base-files/files/etc/banner
