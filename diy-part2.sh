#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate
# fix naivproxy 86.0.4240.75-1 build patch bug 2020/10/15
sed -i 's/is_linux/is_linux \|\| is_chromeos/g' feeds/small/naiveproxy/patches/100-build-add-OpenWrt-staging-libraries.patch