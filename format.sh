#!/bin/sh

##clean dir
rm -rf temp
mkdir temp

##list add md
MDList=`ls *.md`

for md in $MDList
  do
    touch temp/$md
    Title="title: ${md//.md/}"
    Date=`git log --date=format:"%Y-%m-%d %H:%M:%S" -- $md | grep Date | tail -1`
    Date=${Date//Date/date}
    
    PreContext="---\n${Title}\n${Date}\ntags:\n---\n"
    echo $PreContext > temp/$md
    cat $md >> temp/$md
    cat temp/$md
  done;
