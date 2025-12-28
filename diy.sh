Bash

#!/bin/bash
# 1. 修改默认 IP 为 192.168.10.1 (避免冲突)
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 2. 修正固件分区大小设置
sed -i 's/CONFIG_TARGET_ROOTFS_PARTSIZE=.*$/CONFIG_TARGET_ROOTFS_PARTSIZE=1280/g' .confi
