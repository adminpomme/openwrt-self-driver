Bash

#!/bin/bash
# 添加 PassWall 及其依赖源
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> openwrt/feeds.conf.default
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> openwrt/feeds.conf.default

# 添加 MosDNS 源码
echo "src-git mosdns https://github.com/Iinex/luci-app-mosdns.git;main" >> openwrt/feeds.conf.default

# 添加包含 AdGuardHome 的综合插件源 (kiddin9 仓库兼容性极佳)
echo "src-git kiddin9 https://github.com/kiddin9/openwrt-packages.git;master" >>
