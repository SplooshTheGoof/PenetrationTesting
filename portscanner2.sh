#! /bin/bash/

#Get inputs
network_addr=$1
target_port=$2
outfile=$3


#Main loop for itterating through IPs
for ip_range in {1..254}; do
		ip_addr=$(echo $network_addr.$ip_range)
		timeout .1 bash -c "echo >/dev/tcp/$ip_addr/$port_addr" 2>/dev/null && echo "$ip_addr, $port_addr" && echo "$ip_addr, $port_addr" >> $outfile
done 