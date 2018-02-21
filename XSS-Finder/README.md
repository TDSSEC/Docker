# What this does
This has a script that combines the power of **DorkScan** to help find potential vulnerable websites for XSS and **xsscrapy** to crawl and test for XSS vulns in each of the websites that have been obtained.  
Not only this, but after the sites have been crawled and tested, it will display 1 by 1 the contents of each file so that you may see the links where websites are vulnerable.  

## How to use
The image instantly takes you into the script I have created called **customScanner.sh**  
It will ask the following questions which are self-explanatory:  
```
1. The Google Dork you wish to use:
2. The number of Google pages you want it to search through
3. It will display how many results it has found and then ask you to push *ENTER* to start crawling each site
```
### Scripts being utilised  

For detailed information about the scripts being used, see:
```
https://github.com/DanMcInerney/xsscrapy
https://github.com/AzizDammak/DorkScan
```

#### Alias 
Something I use to quickly load this Docker container...  
Added **obb** to `.zshrc` as an alias   
```
obb () {
docker run --rm -it -p 8080:8080 -p 2121:2121 --name obb -e TERM=    $TERM th3d4rkkn1ight/xss-finder
}
```
