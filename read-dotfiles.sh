#!/bin/sh

while read fname; do
	echo "fname=$fname"
	echo `eval echo $fname`
	rsync -av `eval echo $fname` .
done <filelist.txt
