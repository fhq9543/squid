#!/bin/bash
set -e
yum install -y squid httpd
cd /etc/squid/
cp squid.conf squid.conf.bak
wget github.com/fhq9543/squid/blob/master/squid.conf
htpasswd -c /etc/squid/passwd oL18oY
echo -e MYeB9vNH
echo -e MYeB9vNH
squid -z
systemctl start squid
iptables -I INPUT -p tcp -m state --state NEW -m tcp --dport 53128 -j ACCEPT

