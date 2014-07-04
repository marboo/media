#!/bin/sh
# author: amoblin <amoblin@gmail.com>
# file name: audio2html.sh
# create date: 2014-06-26 14:42:23
# This file is created from $MARBOO_HOME/media/starts/default.sh
# 本文件由 $MARBOO_HOME/media/starts/default.sh　复制而来

name=`basename "$1"`
#tmp_file=/tmp/$name
echo "<div class=\"player\">\n\
  <audio controls=\"\" name=\"media\">\n \
    <source src=\"$name\" type=\"audio/mpeg\">\n \
  </audio>\n \
</div>"
