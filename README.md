# sh_learn
This repostories is created for learn shell.

## AWK usage
awk is used for generate format data.
### AWK remove blank
sub(/^[[:blank:]]*/,"",变量)  是去掉变量左边的空白符
sub(/[[:blank:]]*$/,"",变量) 是去掉变量右边的空白符
gsub(/[[:blank:]]*/,"",变量) 是去掉变量中所有的空白符

示例：
``` shell
echo ' 123 456 789  ' | awk '{
print "<" $0 ">";
sub(/^[[:blank:]]*/,"",$0);print "[" $0 "]";
sub(/[[:blank:]]*$/,"",$0);print "|" $0 "|";
gsub(/[[:blank:]]*/,"",$0);print "/" $0 "/";
}'
```
### with cat
``` shell
cat 1.txt | awk '{print$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17}' > car_ee.txt
```

## explorer.exe
explorer is used under win. and the main function 
is open a folder.
e.g.
```
explorer .
```

## generate repeat code
save the names in data.txt then use the below cmd.
```
awk '{sub("^ *","");sub(" *$","");printf "#define XXX__bo%s (%s_read() == True)\n",$0,$0}' data.txt
```

## format file name upper or lower case
format the file name from upper case:A-Z to lower case:a-z.
```
#!/bin/sh
cd ./adapt
for each in *; do mv -i $each `echo $each|tr A-Z a-z`;done 
cd ../core
for each in *; do mv -i $each `echo $each|tr A-Z a-z`;done 
cd ../doc
for each in *; do mv -i $each `echo $each|tr A-Z a-z`;done 
```

##  check the lines of the files in specific folder
```
# wc adapt/* src/*
# [lines] [words] [bytes] [filename]

```
