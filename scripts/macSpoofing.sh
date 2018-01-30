#!/bin/bash

# Time is the number of minutes we wait before changing the MAC address
time=15
if [ $# -eq 1 ]; then
  time=$1
fi


macAddress=$(ifconfig en0 | awk '/ether/{print $2}')
for i in 1 2 3 4 5
do
  IP=$(ifconfig | grep -Eo 'inet \S+' | grep -v '127.0.0.1' | awk '{print $2}')
  echo "Connected with MAC Address: ${macAddress} and IP: ${IP}"
  #sleep ${time}*10 #Sleep for time minutes before generating another MAC address.
  echo "Use the network ..."
  sleep 30

  ifconfig en0 ether ${macAddress} # Set new MAC Address
  ipconfig set en0 DHCP # Renew the link with the network (get new IP)
  echo "Wait for new IP ..."
  sleep 30 # Wait to be connected to the network (need to be attributed an IP)

  macAddress=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//')
done

