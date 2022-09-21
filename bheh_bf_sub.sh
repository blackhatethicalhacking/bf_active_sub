#!/bin/bash
# This tool is written by Chris "SaintDruG" Abou-Chabke for Black Hat Ethical Hacking
#Version 1.0a
BLUE='\033[94m'
RED='\033[91m'
GREEN='\033[92m'
ORANGE='\033[93m'
TARGET="$1"
CURRENT_PATH=$(pwd)

echo -e "$GREEN  ____  _   _ _____ _   _" | lolcat
echo -e "$GREEN| __ )| | | | ____| | | |" | lolcat
echo -e "$GREEN|  _ \| |_| |  _| | |_| |" | lolcat
echo -e "$GREEN| |_) |  _  | |___|  _  |" | lolcat
echo -e "$GREEN|____/|_| |_|_____|_| |_|" | lolcat
  	echo ""
	echo -e "$GREEN [+] by Chris "SaintDruG" Abou-Chabke" | lolcat
	echo -e "$GREEN [+] blackhatethicalhacking.com" | lolcat
	echo -e "$GREEN [-] Usage: cat 500_Top_Prefix_subdomains.txt | ./bheh_bf_sub.sh example.com" | lolcat

echo "Starting Enumeration...watch the results:" | lolcat
domain=$1
while read sub; do 
    if host "$sub.$domain" &> /dev/null; then
    echo "$sub.$domain"| lolcat; 
	fi
done

 # written by blackhatethicalhacking.com for educational purpose only - blackhatethicalhacking.com
