#!/bin/bash

newpost=`date +%Y%m%d%H%M%S`

touch $newpost.markdown

open -W $newpost.markdown

git add .
git commit -a
git pull origin master
git push origin master