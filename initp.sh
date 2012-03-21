#!/bin/bash

if [ -f posts ]
then
	rm posts
fi

touch posts

ls -l *.markdown | awk '{print $9}' | cut -d "." -f1 | while read LINE
do
	firstline=`sed -n 1p $LINE.markdown | cut -d "#" -f2`
	echo "$LINE:$firstline" >> posts
done

echo "done"