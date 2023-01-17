#!/bin/bash

#declare -a arr;
#for ((i=0; i<=5; i++))
#do
#read arr[$i];
#done
#echo ${arr[@]};

arr=(bus car bike ship tank)
echo ${arr[1]};
echo ${#arr[@]}; #size of array
echo ${arr[@]:1:3}; #to display b/w range
echo ${arr[@]:2}; # to display all from particular  index 

echo ${arr[@]//mango/banana}; #to replace element with new element

echo ${arr[@]/blueberry}; #to exclude the  element from result 
unset ${arr[1]} ${arr[2]}; 	#to delete the actual element
