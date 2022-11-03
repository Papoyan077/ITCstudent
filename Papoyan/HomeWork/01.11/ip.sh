#!/bin/bash

ip route | awk '{print $1}' > ip.txt

readarray arr < ./ip.txt

for ((j=0; j<${#arr[*]}; j++)) {
	echo ${arr[$j]}
}
