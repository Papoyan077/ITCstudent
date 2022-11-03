#!/bin/bash



# comand line arguments



echo '$0===='$0
echo '$2===='$2
echo '$1===='$1
echo $10

echo count= $#
echo all=== $* # string
echo '$@=====' $@ # array
echo return code === $? 0-255
echo last cmd process id $!

echo ${arr[1]}

#getopts "h:w" optname -> $OPTARG

while getopts "h:w" test
do

echo myflag $test
if [[ "$test" = h ]]
then
 echo '-h value' $OPTARG
elif [[ "$test" = w ]]
then
  echo '-w' $OPTARG
else
   echo Unknown flag
fi

done

#bash cmd.sh -w path -d dirpath -o output_file


i=1
#while [[ $i -lt $# ]]
#do
#
#echo '$1=====' $1
#let 'i=i+1'
#
#echo "iiiiiiii" $i
#shift 1
#
#done > /dev/null


#bash cmd.sh h e l l o

name() {

echo GOODBYE

}

#name

#myfunc
myfunc() {

echo HELLO WORLD
myarr=$*
echo myarr $myarr
}

function name {
echo hello from ls 
}

#myfunc $1 hello world

anun=$(name)

arr=(1 2 3 4 5)

#myfunc ${arr[*]}

echo anun value==== $anun
echo return code  $?

#myfunc

#name

#varglobal=11111
#varlocal='global-local'
#
#function newfunc {
#local varlocal='local variable'
#echo global ==== $varglobal
#echo local ===== $varlocal
#
#if [[ 1 -eq 1 ]]
#then
#   local ifvar=99
#   echo ifstmt======= $ifvar
#fi
#
#echo ifvar======= $ifvar
#
#}
#
#echo call newfunc
#newfunc
#
#echo global1 ==== $varglobal
#echo local1 ===== $varlocal
#



#if [[ 1 -eq 1 ]]
#then
#   local ifvar=99
#   echo ifstmt1111======= $ifvar
#fi
#
#echo ifvar11111======= $ifvar
#


#recursion


# x * (x-1)

function rec {
  
  if [[ $1 -eq 1 || $1 -eq 0 ]]
  then
     echo 1
  else
     
     i=$(( $1 - 1)) 
     echo $(( $( rec $i) * $1 ))
  fi     
}

#rec 5

#using recursion
#
#print1 20 -> 1 2 3 4 5 6 ... 20
#
#print2 20 -> 20 19 18 17 .... 1
#

#read -p #for passwords

# case statement
echo
case $1 in
[0-9] | arm)
  echo is number or arm
  ;;

en)
   echo langiis eng
   exit 10
   ;;
ru)
  echo lang is ru
  ;;
*)
 echo default val
 ;;

esac

echo EXIIIIIIIIT
 
# exit 0-255






  












