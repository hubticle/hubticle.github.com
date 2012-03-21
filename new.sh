#!/bin/bash

newpost=`date +%Y%m%d%H%M%S`

touch $newpost.markdown

open -W $newpost.markdown

if ! [ "$#" = "1" -a "$1" = "-g" ]
then
	git add .
	git commit -m "New post"
	git pull origin master
	git push origin master
fi

if ! [ -f posts ]
then
	`touch posts`
fi

firstline=`sed -n 1p $newpost.markdown | cut -d "#" -f2`

echo "$newpost:$firstline" >> posts