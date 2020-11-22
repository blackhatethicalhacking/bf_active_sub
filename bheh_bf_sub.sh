#!/usr/bin/bash
echo "Hello from SaintDruG! Here ya go:"
domain=$1
while read sub; do 
    if host "$sub.$domain" &> /dev/null; then
    echo "$sub.$domain";
	fi
done

 # written by blackhatethicalhacking.com for educational purpose only - blackhatethicalhacking.com