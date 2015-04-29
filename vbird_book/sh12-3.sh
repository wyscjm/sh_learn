#!/bin/bash

function printit(){
    echo "You choice is $1"
}

case $1 in
    "one")
        printit 1
        ;;
    "two")
        printit 2
        ;;
    "three")
        printit 3
        ;;
    *)
        echo "Usage $0 {one|two|three}"
        ;;
esac
