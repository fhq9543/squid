#!/bin/bash
set -e
yum install -y squid httpd
cd /etc/squid/
mv squid.conf squid.conf.bak
cp ~/squid.conf .
squid -z
iptables -I INPUT -p tcp -m state --state NEW -m tcp --dport 53128 -j ACCEPT
htpasswd -c /etc/squid/passwd qvkc91
systemctl start squid

