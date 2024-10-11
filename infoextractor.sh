#!/bin/bash
#Line 1 Information is a shebang that tells the operating system which interpreter to use in order to execute the script
#Please scroll right to see comments on the commands
echo 	
	echo 'Your Public IP address is' 															#Writing String
	curl -s ifconfig.io																			#Command to obtain Public IP 
echo																							#Blank line
	echo 'Your internal IP address is'															#Writing String
	ifconfig | grep broadcast | awk '{print $2}'												#Command to obtain Internal IP
echo																							#Blank line
	echo 'Your MAC address is'																	#Writing String
	ip addr | grep 'link/ether' | awk '{print $2}' | cut -c 9-17 | awk '{print "XX:XX:XX:"$0}' 	#Command to obtain Mac address and censoring
echo																							#Blank line
	echo 'Your top 5 processes CPU usage by percentage are'										#Writing String
	ps aux --sort=-%cpu | head -n6																#Command to obtain Processess
echo																							#Blank line
	echo 'Here are the details of your memory usage'											#Writing String
	cat /proc/meminfo | grep Mem																#Command to obtain System Usage
echo																							#Blank line
	echo 'Here are your top 10 files from the /home directory'									#Writing String
	find /home -type f -exec du -b {} + | sort -nr | head -n10									#Command to obtain Disk Usage
echo																							#Blank line
	echo 'Display the active system services and status'										#Writing String
	systemctl list-units --type=service --state=active											#Command to obtain active system services and status
