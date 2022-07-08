#!/bin/bash


a=$(pwd)/$1
b=$(pwd)/$2


cat $a $b >> c.csv
cat c.csv 
e=0
while [ $e<1 ]
do

echo "press d to delete specific lines or e to exit"
read p


if [ $p == "e" ]
then
        e=10
	rm -r c.csv
	break
elif [ $p == "d" ]
then
	echo "enter the pattern to delete"
	read pat
        echo "pattren is $pat"
	sed "/$pat/d" c.csv >> nano.txt
	cat nano.txt
	rm -r c.csv
	mv nano.txt c.csv

fi
done

