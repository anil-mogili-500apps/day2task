#!/bin/bash

read -p "enter a num to find factorial" a
k=1
for ((i=1; i<=$a; i++))
do 
	k=$(($i*$k))
done
echo $k
