#! /bin/bash


network_addr=$1
DNS_addr=$2

for ip_range in {1..254}; do
	ipaddr=$(echo $network_addr.$ip_range)
	timeout .1 bash -c "nslookup $ipaddr $DNS_addr | grep 'name ='" 2>/dev/null 
done