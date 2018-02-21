### Alias 
Added **obb** to `.zshrc` as an alias   
```
obb () {
docker run --rm -it -p 8080:8080 -p 2121:2121 --name obb -e TERM=    $TERM th3d4rkkn1ight/xss-finder
}
```
