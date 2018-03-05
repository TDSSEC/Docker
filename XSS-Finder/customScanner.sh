#!/bin/bash
## Custom Scanner v2.3
## This allows you to enter the Dork you wish to run and number of pages to run.
## It then automatically starts scanning all urls obtained through XSSCRAPY.py

read -p "[?] Google Dork to use: " dork
read -p "[?] No. of Google pages to sift through: " num

echo "\n [+] Running Dork Scan... \n"
python3 /opt/DorkScan/scanner.py $dork $num > /opt/xsscrapy/urls.txt
echo "\n[+] Scan completed and outputted to urls.txt in /opt/xsscrapy/ Directory \n"

echo "[+] There was a Total of $(expr $(cat urls.txt | wc -l ) - 3)"

read -p "[!] Press [Enter] key to start scanning the URLs \n" -s

echo "[+] Scanning the list of URL's with xsscrapy now \n"
for i in $(cat /opt/xsscrapy/urls.txt)
do 
    cd /opt/xsscrapy/ && python ./xsscrapy.py -u $i
done

echo "\n[+] Opening the results in a pager\n"
for t in $(find /opt/xsscrapy -name '*.txt')
do
    less $t
done
