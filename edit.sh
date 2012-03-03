#!/bin/bash

id=1

echo "POSTS"
echo "======"
cat posts | while read LINE
do
	echo "$id) $LINE"
	let id++
done
echo ""
echo -n "Edit what? :"
read choice

sed_arg="${choice}p"

post=`cat posts | sed -n $sed_arg | cut -d ":" -f1`

open -W $post.markdown

git add .
git commit -m "edited post $post"
git pull origin master
git push origin master