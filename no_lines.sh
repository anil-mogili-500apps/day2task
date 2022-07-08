#!/bin/bash

a=$(pwd)/$1

b=$(awk 'END {print NR}' $a)

echo $b
