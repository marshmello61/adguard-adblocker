#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

setprop net.eth0.dns1 176.103.130.130
setprop net.eth0.dns2 176.103.130.130

setprop net.dns1 176.103.130.130
setprop net.dns2 176.103.130.130

setprop net.ppp0.dns1 176.103.130.130
setprop net.ppp0.dns2 176.103.130.130

setprop net.rmnet0.dns1 176.103.130.130
setprop net.rmnet0.dns2 176.103.130.130

setprop net.rmnet1.dns1 176.103.130.130
setprop net.rmnet1.dns2 176.103.130.130

setprop net.pdpbr1.dns1 176.103.130.130
setprop net.pdpbr1.dns2 176.103.130.130

setprop 2a00:5a60::ad1:0ff
setprop 2a00:5a60::ad1:0ff



# Edit the resolv conf file if it exist

if [ -a /system/etc/resolv.conf ]; then
	mkdir -p $MODDIR/system/etc/
	printf "nameserver 176.103.130.130\nnameserver 176.103.130.130" >> $MODDIR/system/etc/resolv.conf
	chmod 644 $MODDIR/system/etc/resolv.conf
fi

