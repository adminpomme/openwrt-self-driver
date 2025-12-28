Bash

#!/bin/bash
# 1. 修改默认 IP 为 192.168.10.1 (防光猫冲突)
sed -i 's/192.168.1.1/192.168.10.1/g' openwrt/package/base-files/files/bin/config_generate

# 2. 扩容：设定 1600MB 根分区 (确保安装后有 >1GB 空闲)
sed -i 's/CONFIG_TARGET_ROOTFS_PARTSIZE=.*$/CONFIG_TARGET_ROOTFS_PARTSIZE=1600/g' openwrt/.config

# 3. 移除重复或冲突的源 (可选)
# sed -i 's/something/something_else/g' ...
