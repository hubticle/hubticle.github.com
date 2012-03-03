#!/bin/bash

newpost=`date +%Y%m%d%H%M%S`

touch $newpost.markdown

open -W $newpost.markdown

#git add .
#git commit -a
#git pull origin master
#git push origin master

if ! [ -f posts ]
then
	`touch posts`
fi

firstline=`sed -n 1p $newpost.markdown | cut -d "#" -f2`

echo "$newpost:$firstline" >> posts