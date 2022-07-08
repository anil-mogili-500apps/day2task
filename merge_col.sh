#!/bin/bash
cat small.csv | while read line
do
	line1=$(echo $line)
        name=$(echo $line | cut -d "," -f 1 )
	year=$(cat sample.txt | grep $name | cut -d ":" -f 2)
	line2=$(echo "$line,$year")
	sed -i "s/$line1/$line2/g" small.csv
done
