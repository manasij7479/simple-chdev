#!/bin/bash

# 1 - path to the directory with nilfs2

touch $1/testfile.txt

for i in {0..100}
do
	echo "Number: $i" >> $1/testfile.txt
	mkcp -s
done
