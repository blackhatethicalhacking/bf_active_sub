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
# Matrix effect
echo "Exiting the Matrix for 5 seconds in:" | toilet --metal -f term -F border
sleep 1
echo "3" | toilet --gay -f term -F border
sleep 1
echo "2" | toilet --metal -f term -F border
sleep 1
echo "1" | toilet --gay -f term -F border
sleep 1

R='\033[0;31m'
G='\033[0;32m'
Y='\033[1;33m'
B='\033[0;34m'
P='\033[0;35m'
C='\033[0;36m'
W='\033[1;37m'

for ((i=0; i<5; i++)); do
    echo -ne "${R}10 ${G}01 ${Y}11 ${B}00 ${P}01 ${C}10 ${W}00 ${G}11 ${P}01 ${B}10 ${Y}11 ${C}00\r"
    sleep 0.2
    echo -ne "${R}01 ${G}10 ${Y}00 ${B}11 ${P}10 ${C}01 ${W}11 ${G}00 ${P}10 ${B}01 ${Y}00 ${C}11\r"
    sleep 0.2
    echo -ne "${R}11 ${G}00 ${Y}10 ${B}01 ${P}00 ${C}11 ${W}01 ${G}10 ${P}00 ${B}11 ${Y}10 ${C}01\r"
    sleep 0.2
    echo -ne "${R}00 ${G}11 ${Y}01 ${B}10 ${P}11 ${C}00 ${W}10 ${G}01 ${P}11 ${B}00 ${Y}01 ${C}10\r"
    sleep 0.2
done
echo -e "\033[2J\033[?25h" # reset screen
