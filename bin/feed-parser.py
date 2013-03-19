#!/usr/bin/env python
# -*- coding:utf8 -*-
# author: amoblin <amoblin@gmail.com>
# file name: feed-parser.py
# create date: 2013-03-14 12:21:37
# This file is created from ~/.marboo/source/media/bin/default.init.py
# 本文件由 ~/.marboo/source/media/bin/default.init.py 复制而来

import os
import sys
import feedparser

feed_file = sys.argv[1]
feed_data = feedparser.parse(feed_file)

channel, items = feed_data.feed, feed_data.entries
print channel.title, channel.description

feed_root = os.path.dirname(feed_file)
os.chdir(feed_root)

for item in items:
    print item.title
    file_name = "%s.feed.md" % item.title
    if os.path.exists(file_name):
        continue
    f = open(file_name, "w")
    f.write("# %s\n\n" % item.title)
    #f.write("## %s" % item.pubDate )
    f.write(item.description)
    f.close()
