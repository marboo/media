#!/bin/sh
# create date: Thu Jan 31 17:41:46 2013

"$1" > /tmp/x 2>&1
echo "<h3>`basename \"$1\"`</h3>"
pygmentize -f html -O encoding=utf8,style=default -g /tmp/x
