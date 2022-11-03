#!/bin/bash

tiv=0
count=$1
recursion(){
if [[ $tiv -lt $count ]]
then 
echo $tiv
tiv=$(( $tiv+1 ))
recursion
fi
}

recursion
