#!/bin/bash
## Customer Scanner v1.0 - T.S 31/01/18
## This script merges DorkScanner + XSScrapy together to quickly scan sites instantly.

dork=raw_input("Please enter the Google Dork you wish to use: ")
num=raw_input("How many google pages to sieve through?: ")

echo "Running Dork Scan..."

python3 /opt/DorkScan/scanner.py $dork $num > /opt/xsscrapy/urls.txt

echo "Scan completed and outputted to urls.txt in /opt/xsscrapy/ Directory"

echo "Scanning the list of URL's with xsscrapy now"
for i in $(cat urls.txt); do python /opt/xsscrapy/xsscrapy.py -u $i; done
