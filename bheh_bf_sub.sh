#!/usr/bin/bash
echo "Hello from SaintDruG! Here ya go:" | lolcat
domain=$1
while read sub; do 
    if host "$sub.$domain" &> /dev/null; then
    echo "$sub.$domain"| lolcat; 
	fi
done

 # written by blackhatethicalhacking.com for educational purpose only - blackhatethicalhacking.com
