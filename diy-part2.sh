#!/bin/bash
# 1. 修改默认 IP 为 192.168.10.1
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 2. 强制分区大小 (1600MB 以确保 1G 空闲空间)
# 注意：在执行此脚本前 .config 已经存在于当前目录
sed -i 's/CONFIG_TARGET_ROOTFS_PARTSIZE=.*$/CONFIG_TARGET_ROOTFS_PARTSIZE=1600/g' .config

# 3. 设置固件名称标识
sed -i 's/OpenWrt/Official-24.10-Custom/g' package/base-files/files/etc/banner
