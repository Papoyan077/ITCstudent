#!/bin/bash

readarray arr < ./SortByNameTest.txt


for ((i=0; i<${#arr[*]}; i++)) {

flag=0

for ((j=0; j<${#arr[*]}; j++)) {

if [[ ${arr[$i]} < ${arr[$((j))]} ]]
then 
tmp=${arr[$i]}
arr[$i]=${arr[$j]}
arr[$j]=$tmp
flag=1;

fi
}

if [[ $flag -eq 0 ]]; then
          break;
fi

}


for ((j=0; j<${#arr[*]}; j++)) {

if [[ $j -eq 0 ]]
then 
echo ${arr[$j]} > ./SortByNameTest.txt


else 
echo ${arr[$j]} >> ./SortByNameTest.txt
fi
}



