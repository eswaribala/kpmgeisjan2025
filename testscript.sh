#!/bin/bash
echo "Number of customers"
read count
#create dynamic array of names
names=()
for i in $(seq 1 $count)
do
echo "Read Name"
read name
names[$i]=$name
echo $i

done

#display names starts with s
echo "${names[@]}"
echo "Size of the array ${#names[@]}"
pos=1
length=${#names[@]}
echo "$length"

while [ $pos -le $length ]
do
name=${names[$pos]}
if  [[ ${name:0:1} = "S" ]]
then 
 echo "Name of the customer $name"
fi
((pos++))

echo $pos

done
