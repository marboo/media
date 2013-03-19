#!/usr/bin/env python
# -*- coding:utf8 -*-
# author: amoblin <amoblin@gmail.com>
# file name: opml-parser.py
# create date: 2013-03-14 10:42:10
# This file is created from ~/.marboo/source/media/bin/default.init.py
# 本文件由 ~/.marboo/source/media/bin/default.init.py 复制而来

import os
import sys
import opml
import urllib

opml_file = sys.argv[1]
rss_root = os.path.dirname(opml_file)
os.chdir(rss_root)

outline = opml.parse(sys.argv[1])
print outline.title, len(outline)

for group in outline:
    #print group.title, group.text
    dir_name = group.title.replace("/", "|")
    if not os.path.exists(dir_name):
        os.mkdir(dir_name)

    #try:
    #    feed_name = os.path.join(dir_name, "feed.xml")
    #    if not os.path.exists(feed_name):
    #        urllib.urlretrieve(group.xmlUrl, feed_name)

    for item in group:
        print item.title,
        subdir_name = os.path.join(dir_name, item.title.replace("/", "|"))
        feed_name = os.path.join(subdir_name, "%s.feed.xml" % item.title.replace("/", "|"))

        if not os.path.exists(subdir_name):
            os.mkdir(subdir_name)
        if not os.path.exists(feed_name):
            print "fetch feed: ", item.xmlUrl
            urllib.urlretrieve(item.xmlUrl, feed_name)
