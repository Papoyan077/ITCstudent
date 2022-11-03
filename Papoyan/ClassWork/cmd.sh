#!/bin/bash

echo  '$0=='$0
echo  '$1=='$1
echo  '$2=='$2
echo  '$3=='$3
echo  '$4=='$4

echo count=$#

echo all=$*

echo '$?'= $?

echo '$!'= $!

while getopts "h:w" test
do
if [[ $test == h ]]
then	
echo '-h value' $OPTARG
elif [[ $test == w ]]
then	
echo '-w value' $OPTARG
fi
done




#function

function name {
echo goodbye
}

myFunc() {
 echo helloo
}


name
myFunc

