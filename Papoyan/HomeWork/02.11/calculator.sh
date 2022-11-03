#!/bin/bash


. ./math.sh



case $1 in
+)
sum $2 $3 
;;
-)
sub $2 $3 
;;
'x')
mult $2 $3 
;;
'/')
div $2 $3 
;;

esac
