#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

#comment useless feed source
sed -i 's/\(.*routing\)/#\0/' feeds.conf.default
sed -i 's/\(.*telephony\)/#\0/' feeds.conf.default

# Add a feed source
#sed -i '1i src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default