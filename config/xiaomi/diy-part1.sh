#!/bin/bash
sed -i 's/kmod-mt7603 kmod-mt7615e kmod-mt7615-firmware/kmod-mt7603e kmod-mt7615d luci-app-mtwifi/g' target/linux/ramips/image/mt7621.mk
sed -i 's/kmod-mt7603 kmod-mt76x2/kmod-mt7603e kmod-mt76x2e luci-app-mtwifi/g' target/linux/ramips/image/mt7621.mk
sed -i '/wpad-openssl/d' target/linux/ramips/image/mt7621.mk
cd package
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean
rm -rf lean/shortcut-fe
rm -rf lean/autocore
rm -rf lean/automount
rm -rf lean/autosamba
rm -rf lean/coremark
rm -rf lean/csstidy
rm -rf lean/default-settings
rm -rf lean/dsmboot
rm -rf lean/fast-classifier
rm -rf lean/gmediarender
rm -rf lean/k3-brcmfmac4366c-firmware
rm -rf lean/k3screenctrl
rm -rf lean/libcryptopp
rm -rf lean/luci-app-sfe
rm -rf lean/openwrt-fullconenat
rm -rf lean/v2ray
rm -rf lean/.svn
echo "佛祖保佑，编译必成"
#                  佛祖保佑       永不宕机     永无BUG              //


#                            _ooOoo_  
#                           o8888888o  
#                           88" . "88  
#                           (| -_- |)  
#                            O\ = /O  
#                        ____/`---'\____  
#                      .   ' \\| |// `.  
#                       / \\||| : |||// \  
#                     / _||||| -:- |||||- \  
#                       | | \\\ - /// | |  
#                     | \_| ''\---/'' | |  
#                      \ .-\__ `-` ___/-. /  
#                   ___`. .' /--.--\ `. . __  
#                ."" '< `.___\_<|>_/___.' >'"".  
#               | | : `- \`.;`\ _ /`;.`/ - ` : | |  
#                 \ \ `-. \_ __\ /__ _/ .-` / /  
#         ======`-.____`-.___\_____/___.-`____.-'======  
#                            `=---='  
#  
#         .............................................  
#                  佛祖保佑             永无BUG 
#          佛曰:  
#                  写字楼里写字间，写字间里程序员；  
#                  程序人员写程序，又拿程序换酒钱。  
#                  酒醒只在网上坐，酒醉还来网下眠；  
#                  酒醉酒醒日复日，网上网下年复年。  
#                  但愿老死电脑间，不愿鞠躬老板前；  
#                  奔驰宝马贵者趣，公交自行程序员。  
#                  别人笑我忒疯癫，我笑自己命太贱；  
#                  不见满街漂亮妹，哪个归得程序员？