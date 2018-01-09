#!/usr/bin/sh
# Cannot build in our own directory
MAKEDIR=../
cp mkdocs.yml $MAKEDIR
cp -r docs/ $MAKEDIR
cd $MAKEDIR
mkdocs build

sitedir=mrayson.github.io
#sitedir=website
mv mkdocs.yml $sitedir
cp -r site_tmp/* $sitedir
rm -r site_tmp
#mv docs/ $sitedir
rm -r docs/
cd $sitedir


