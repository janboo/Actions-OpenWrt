#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

#comment useless feed source
sed -i 's/\(.*routing\)/#\0/' feeds.conf.default
sed -i 's/\(.*telephony\)/#\0/' feeds.conf.default
sed -i 's/\(.*freifunk\)/#\0/' feeds.conf.default

# Add a feed source
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '1i src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default