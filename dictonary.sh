#!/bin/bash

declare -A classroom;

classroom["name1"]="Akash";

classroom["name2"]="shubham";

classroom["name3"]="satya";

classroom["name4"]="Akash";

echo ${classroom[@]};

#classroom["name4"]="Lavanya";
#echo ${classroom[@]};

#display keys
#echo ${!classroom[@]};

#remove key-value
#unset classroom["name1"];

#echo ${!classroom[@]};

#get and display key value
for student in "${!classroom[@]}"
do
echo "$student ${classroom[$student]}";
done
