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
