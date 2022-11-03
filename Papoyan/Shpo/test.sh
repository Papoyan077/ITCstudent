#!/bin/bash

#echo aaaaaaaaa
echo HELLO WORLD!!!

varname=test

echo $varname

var1=1
var2=test

PWD=`pwd` # $(pwd)

echo $PWD

let "var1+=1"
let "var2+=1"
echo var1====  $var1

echo var2==== $var2

echo $var3


echo '$var1', "$var1" 

var='sasdasd dddd'
var1=$var'hello'

echo $var1

export varnew=export

echo $varnew

readonly varconst=1
echo $varconst

varconst=const

echo $varconst


declare -r dec="bye"

dec="hello"

#-i # integer
#-f # function
#-a # array
#-A # object/map
#-x # export

declare -i int=11

echo $int

int=test

echo $int



unset int

echo unset $int

echo -n hello; echo world
#; && ||

pwd && echo pwd
aaa && echo aaa

#mkdir dir_name && cd dir_name
#cd dir_name || mkdir dir_name && cd dir_name

aaaa || echo aaaa && pwd


cat file | grep aaaa

echo "please input"
#read userinp 
#
#read -p "please input 2 " inp1 inp2 inp3
#read -t 5 "aaaaaa" a1
#
echo $userinp
echo $inp1 $inp2
echo inpt3=== $inp3

#if statement
#
#if <payman>
#then
# <command>
#fi

if pwd
then echo "pwd good"
fi

if pdw
then  echo "pwd good v2"
else echo "not good"
fi 2> /dev/null



if pdw
then echo "pwd ggod"
elif pwd
then echo "pwd too good"
else echo "not so good"
fi 2> /dev/null


var=1
# -eq
# -gt
# -ge
# -lt
# -le
# -ne

if [[ $var -gt 2 ]]
then echo "var is > 2"
else echo "var < 2"
fi

#read -p "enter vars=" var1 var2 var3
#
#if [[ $var1 -gt $var2 && $var1 -gt $var3 ]]
#then echo $var1
#elif [[ $var2 -gt $var3 ]]
#then echo $var2
#else echo $var3
#fi
#
# string-eri hamematum
# =
# !=
# >
# <
# -n
# -z
#

str1=atest
str2=btest
#length=${#str}
#echo length==== $length


if [[ $str1 = $str2 ]]
then echo "equal"
elif [[ $str1 > $str2 ]]
then echo "str1"
else echo "str2"
fi

if [[ -n $str1 ]]
then echo "datark che"
else echo "datark e"
fi

echo ${str1:1:2}

#file comp
# -d
# -f
# -r -w -x
# -s
# -G
# -O
# f1 -nt f2
# f1 -ot f2

if [[ -s ./file1 ]]
then echo "ka"
else echo "chka"
fi

head
tail
echo


head -n 5 file1
tail -n 5 file1















































