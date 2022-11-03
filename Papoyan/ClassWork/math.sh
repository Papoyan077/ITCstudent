#!/bin/bash

num1=$2
num2=$3
res=0
sum(){
echo $(( $num1 + $num2 )) 
}

sub(){
echo $(( $num1 - $num2 )) 
}

mult(){
echo $(( $num1 * $num2 )) 
}


div(){
echo $(( $num1 / $num2 )) 
}

