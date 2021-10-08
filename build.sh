#!/usr/bin/bash
mkdocs build
cp -r site/* ./
mkdocs serve & firefox http://127.0.0.1:8000
#echo `Use the batch file instead`
#set -x
## Cannot build in our own directory
#MAKEDIR=/home/suntans/Share/code/
#cp mkdocs.yml $MAKEDIR
#cp -r docs/ $MAKEDIR
#cd $MAKEDIR/
#mkdocs build

#sitedir=mrayson.github.io
#sitedir=website
#mv mkdocs.yml $sitedir
#cp -r site_tmp/* $sitedir
#rm -r site_tmp
#mv docs/ $sitedir
#rm -r docs/
#cd $sitedir


