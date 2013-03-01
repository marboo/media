#!/bin/sh
# author: amoblin
# craete date: Mon Feb  4 23:14:13 2013
# note: the converter for "run.c" template.

runsh=~/.marboo/source/media/bin/run.sh
cmd=/tmp/`basename \"$1\"`
gcc "$1" -o "$cmd"
$runsh "$cmd"
