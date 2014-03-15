#!/bin/sh
# author: amoblin <amoblin@gmail.com>
# file name: lisarn.sh
# create date: 2014-03-15 08:27:42
# This file is created from ~/.marboo/source/media/file_init/default.init.sh
# 本文件由 ~/.marboo/source/media/file_init/default.init.sh　复制而来

name=`basename "$1"`
tmp_file=/tmp/$name
echo '
<div width="100%" height="100%">
<video width="100%" height="500" controls>
  <source src="'${name}'" type="video/mp4">
Your browser does not support the video tag.
</video>
<textarea rows="14" width="100%"
style="width: 100%;-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;box-sizing: border-box; ">
</textarea>
</div>'
