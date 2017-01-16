#!/bin/bash



route add -net 192.168.0.0/16 gw 192.168.102.254
ip address add 192.168.102.16/24 dev eth1
ip address add 192.168.102.26/24 dev eth1
ip address add 192.168.102.36/24 dev eth1
ip address add 192.168.102.46/24 dev eth1


arp -s 192.168.102.254 00:00:00:00:66:FE
arp -s 192.168.102.1 a0:36:9f:2d:28:f1
arp -s 192.168.102.11 a0:36:9f:2d:28:f1
arp -s 192.168.102.21 a0:36:9f:2d:28:f1
arp -s 192.168.102.31 a0:36:9f:2d:28:f1
arp -s 192.168.102.41 a0:36:9f:2d:28:f1
arp -s 192.168.102.2 00:0a:f7:11:bf:61
arp -s 192.168.102.12 00:0a:f7:11:bf:61
arp -s 192.168.102.22 00:0a:f7:11:bf:61
arp -s 192.168.102.32 00:0a:f7:11:bf:61
arp -s 192.168.102.42 00:0a:f7:11:bf:61
arp -s 192.168.102.3 00:0a:f7:11:b9:c1
arp -s 192.168.102.13 00:0a:f7:11:b9:c1
arp -s 192.168.102.23 00:0a:f7:11:b9:c1
arp -s 192.168.102.33 00:0a:f7:11:b9:c1
arp -s 192.168.102.43 00:0a:f7:11:b9:c1
arp -s 192.168.102.4 00:0a:f7:11:bf:e5
arp -s 192.168.102.14 00:0a:f7:11:bf:e5
arp -s 192.168.102.24 00:0a:f7:11:bf:e5
arp -s 192.168.102.34 00:0a:f7:11:bf:e5
arp -s 192.168.102.44 00:0a:f7:11:bf:e5
arp -s 192.168.102.5 00:10:18:f5:05:cd
arp -s 192.168.102.15 00:10:18:f5:05:cd
arp -s 192.168.102.25 00:10:18:f5:05:cd
arp -s 192.168.102.35 00:10:18:f5:05:cd
arp -s 192.168.102.45 00:10:18:f5:05:cd
arp -s 192.168.102.6 00:0a:f7:11:e0:79
arp -s 192.168.102.16 00:0a:f7:11:e0:79
arp -s 192.168.102.26 00:0a:f7:11:e0:79
arp -s 192.168.102.36 00:0a:f7:11:e0:79
arp -s 192.168.102.46 00:0a:f7:11:e0:79
