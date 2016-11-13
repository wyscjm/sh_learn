#!/bin/sh
if(test $1) then
    if(ls $1 > /dev/null) then
        echo "Start processing..."
    else
        echo "PATH not found."
    fi
else
    echo "Usage:./.mv_conf_suffix.sh PATH"
    echo "Author:w079064@163.com"
    exit 1
fi

baseDir=$1
baseDirLen=`expr length $baseDir`
for oldfile in `find $baseDir`
do
    oldfilePath = ${oldfile#*$baseDir}
done
