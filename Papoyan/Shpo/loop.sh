#!/bin/bash



# loop


var=shdajshdjash
echo $var

var=1

if [[ $var -gt 2 ]]
then echo aaaa
else echo bbb
fi

# for


var=1
echo $(( var+=1 ))
echo $var

let "var=var+3"

echo $var

var1=`expr 5 % 2`
echo $var1
var=0
for file in 1 2 3 4 5
do
  if [[ `expr $file % 2` -eq 0 ]]
  then let "var=var+1"
  fi
  echo $file
done > /dev/null

echo $var


for file in `ls`
do

echo $file

done > ./file_loop


# C-style for

for ((i=0; i<10; i+=2))
do
echo $i
done > /dev/null


# while

age=0
while [[ $age -le 18 ]]
do
    if [[ $age -lt 6  ]]
    then 
       let "age+=1"
       continue
    fi
    echo ari tun
    echo $age tarekan mard
    let "age+=1"
    
done > /dev/null

age=0
until [[ $age -gt 18  ]]
do
  echo ari tun
  echo $age tarekan mard
  let "age+=1"
done > /dev/null


# break and continue


# arrays

declare -a arr=(a b c d e f)

echo ${arr[*]}

echo ${arr[3]}

arr[11]=23

echo ${arr[*]}


arr=(1 2 3 4 5)

echo ${arr[*]}

arr[11]=66

echo ${arr[10]}
echo ${arr[12]}

echo length ${#arr[*]}

arr=([11]=0 [12]=2 [13]=3)

echo ${arr[13]}

echo ${arr[*]}
arr+=([1]=0 [11]=11)

arr=(`ls`)

echo ${arr[*]}

readarray arr < ./file1

echo ${arr[*]}


