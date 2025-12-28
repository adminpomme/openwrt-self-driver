#!/bin/bash
# 1. 修改默认 IP 为 192.168.10.1
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 2. 强制分区大小 (1600MB，系统占约 400MB，剩下 1.2G 给软件)
sed -i 's/CONFIG_TARGET_ROOTFS_PARTSIZE=.*$/CONFIG_TARGET_ROOTFS_PARTSIZE=1600/g' .config

# 3. 开启 IPv6 默认支持
sed -i 's/0/1/g' package/network/config/ipv6helper/files/etc/config/network 2>/dev/null || true

# 4. 修改固件横幅标识
sed -i 's/OpenWrt/Official-24.10-Full-v6/g' package/base-files/files/etc/banner
