#!/bin/bash
set -e

/sbin/ifdown ppp0 && /sbin/ifup ppp0
ifconfig ppp0 | grep 'inet '| grep -v '127.0.0.1' | cut -d: -f2 | awk 'NR==1 { print $2}'
