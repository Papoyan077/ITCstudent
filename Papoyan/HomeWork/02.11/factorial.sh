#!/bin/bash

count=$1
res=1
factorial(){
if [[ $count -ne 1 ]]
then 
res=$(( $res * $count ))
count=$(( $count-1 ))
factorial
fi
}

factorial

echo $res
