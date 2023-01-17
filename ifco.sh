#!/bin/bash

isPresent=1;
isparttime=2;
fixedhr=8;
fixedparthr=5;
sal=100;
random=$((RANDOM%3));
if [ $random -eq $isPresent ]
then

	echo "Employee is present";
	echo "his daily wage is $(($fixedhr * $sal))";
elif [ $isparttime -eq $random ]
then
	echo "Employee is part time"
	echo "his salary is $(($fixedparthr * $sal))";
else
	echo "Employee is absent";
	echo "he didn't earn";
fi
