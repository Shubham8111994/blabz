#!/bin/bash -x

isPresent=1;
isparttime=2;
noofworkinghrs=21;
sal=100;
totalsalary=0;
for ((day=1; day<=$noofworkinghrs; day++))
do
random=$((RANDOM%3));
case $random in
	$isPresent)
	
	emphr=8;
	echo "Employee is present";
	echo "his daily wage is $(($emphr * $sal))";;
	$isparttime)
	emphr=5;
	echo "Employee is part time"
	echo "his salary is $(($emphr * $sal))";;
	*)
	emphr=0;
	echo "Employee is absent";
	echo "he didn't earn";;
esac
salary=$(($emphr*$sal));
totalsalary=$(($totalsalary+$salary));
done

