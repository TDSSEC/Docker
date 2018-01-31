#!/bin/bash
## Custom Scanner v1.2
## This allows you to enter the Dork you wish to run, and number of pages to run.
## It then automatically starts scanning all urls obtained through XSSCRAPY.py
## Run this from the XSScrapy Dir!

echo "Please enter the Google Dork you wish to use: "
read dork
echo "How many google pages to sift through?: "
read num

echo "Running Dork Scan..."
python3 /opt/DorkScan/scanner.py $dork $num > /opt/xsscrapy/urls.txt

echo "Scan completed and outputted to urls.txt in /opt/xsscrapy/ Directory"

echo "Scanning the list of URL's with xsscrapy now"
for i in $(cat /opt/xsscrapy/urls.txt); do python xsscrapy.py -u $i; done
