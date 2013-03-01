#!/bin/sh
# author: amoblin
# create date: Thu Jan 31 17:41:46 2013
# note: the converter for "run" template.

echo "<h3>`basename \"$1\"`</h3>"
"$1" > /tmp/marboo_tmp_file 2>&1
pygmentize -f html \
    -O encoding=utf-8,outencoding=latin-1,style=default \
    -g /tmp/marboo_tmp_file
