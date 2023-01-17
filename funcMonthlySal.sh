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

function cllworkhr(){
case $1 in
	$isPresent)
	emphr=8;;
	$isparttime)
	emphr=5;;
	*)
	emphr=0;;
esac
echo $emphr;
}

while [[ $totalemphr -le $maxhrinMonth && $totalWorkingDays -lt $noOfWorkingDays ]]
do
empcheck=$(cllworkhr $((RANDOM%3)));

totalemphr=$(($totalemphr+$empcheck));
if [ $totalemphr -gt $maxhrinMonth ]
then
	totalemphr==$(($totalemphr-$empcheck));
	break;
fi
salary=$(($totalemphr*$sal));
totalsalary=$(($totalsalary+$salary));
((totalWorkingDays++));
done
echo "totalsalary" $salary;

