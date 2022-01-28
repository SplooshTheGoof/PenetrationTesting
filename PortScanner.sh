#! /bin/bash/

#Get inputs
target_address=$1
target_ports=$2
outfile=$3

#Main loop for itterating through IPs
for ip_addr in $(cat $target_address); do
	for port_addr in $(cat $target_ports); do
		timeout .1 bash -c "echo >/dev/tcp/$ip_addr/$port_addr" 2>/dev/null && echo "$ip_addr, $port_addr" && echo "$ip_addr, $port_addr" >> $outfile
	done
done 
