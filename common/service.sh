#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread

iptables -t nat -A OUTPUT -p tcp --dport 53 -j DNAT --to 176.103.130.130:5353
iptables -t nat -A OUTPUT -p udp --dport 53 -j DNAT --to 176.103.130.130:5353

ip6tables -t nat -A OUTPUT -p tcp --dport 53 -j DNAT --to [2a00:5a60::ad1:0ff]:5353
ip6tables -t nat -A OUTPUT -p udp --dport 53 -j DNAT --to [2a00:5a60::ad1:0ff]:5353

