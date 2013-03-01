#!/bin/sh
# author: amoblin <amoblin@gmail.com>
# file name: mbe.json.sh
# create date: 2013-03-01 10:02:37

python -c "import sys,json;print json.loads(open(sys.argv[1]).read())['files']" $1

./router.sh $1
