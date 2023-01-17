#!/bin/bash -x

isPresent=1;
isparttime=2;
noofworkinghrs=21;
sal=100;
totalsalary=0;
maxhrinMonth=50;
noOfWorkingDays=20;

totalemphr=0;
totalWorkingDays=1;
while [[ $totalemphr -le $maxhrinMonth && $totalWorkingDays -lt $noOfWorkingDays ]]
do
empcheck=$((RANDOM%3));
case $empcheck in
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
totalemphr=$(($totalemphr+$emphr));
if [ $totalemphr -gt $maxhrinMonth ]
then
	totalemphr==$(($totalemphr-$emphr));
	break;
fi
salary=$(($totalemphr*$sal));
totalsalary=$(($totalsalary+$salary));
((totalWorkingDays++));
done
echo "totalsalary" $salary;

