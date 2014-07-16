#!/bin/sh
# author: amoblin <amoblin@gmail.com>
# file name: video2html.sh
# create date: 2014-07-06 06:37:27
# This file is created from $MARBOO_HOME/media/starts/default.sh
# 本文件由 $MARBOO_HOME/media/starts/default.sh　复制而来

name=`basename "$1"`
#tmp_file=/tmp/$name
echo "<div class=\"player\" style=\"text-align:center\">\n\
  <video controls=\"\" name=\"media\" width=\"80%\">\n \
    <source src=\"$name\" type=\"video/mp4\">\n \
  </video>\n \
</div>"
