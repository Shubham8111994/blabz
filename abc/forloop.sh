#!/bin/bash -x

for file in `ls *.txt`

do
nameoffile=`echo $file | awk -F . '{print $1}'`;
	if [ -d $nameoffile ];
then
	rm -r $nameoffile;
fi
	mkdir $nameoffile;
	cp $file $nameoffile;
done
