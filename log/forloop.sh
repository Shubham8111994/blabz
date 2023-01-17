#!/bin/bash

for file in `ls *.txt`

do
nameoffile=`echo $file | awk -F . '{print $1}'`;
	if [ -d $nameoffile ];
then
	rm -r $nameoffile;
fi
	mkdir $nameoffile;
d=$(date +%d-%M-%Y );
newname=$nameoffile+$d;
	cp $file $newname;
	mv $newname $nameoffile;
done
