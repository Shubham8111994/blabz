#!/bin/bash -x

isPresent=1;
isparttime=2;
fixedhr=8;
fixedparthr=5;
sal=100;
random=$((RANDOM%3));
case $random in
	$isPresent)
	echo "Employee is present";
	echo "his daily wage is $(($fixedhr * $sal))";;
	$isparttime)
	echo "Employee is part time"
	echo "his salary is $(($fixedparthr * $sal))";;
	*)
	echo "Employee is absent";
	echo "he didn't earn";;
esac
