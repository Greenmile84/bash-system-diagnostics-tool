#!/bin/bash

#Identify the system's public IP. 

echo "My public IP address is:"
curl -s ifconfig.me
echo
echo

#Identify the private IP address assigned to the system's network interface.

echo "My private IP address is:"
ifconfig | grep -w inet | grep -v 127.0.0.1 | awk '{print $2}'
echo

#Display the MAC address (masking sensitive portions for security). 

echo "MAC address found (masked):"
ifconfig | grep ether | awk '{print $2}' | sed -E 's/^([0-9a-f]{2}:){3}/xx:xx:xx:/'
echo

#Display the percentage of CPU usage for the top 5 processes. 

echo "Top 5 processes by CPU usage:"
ps -eo %cpu,comm --sort=-%cpu | head -n 6
echo

#Display memory usage statistics: total and available memory.

echo "Total and available memory:"
free -h | awk '/Mem:/ {print "Total:", $2, " Available:", $7}'
echo

#List active system services with their status. 

echo "Running services:"
systemctl list-units --type=service --state=running --no-pager --no-legend
echo

#Locate the Top 10 Largest Files in /home.

echo "Top 10 largest files in /home:"
find /home -type f -exec du -h {} \; 2>/dev/null | sort -rh | head -n 10





