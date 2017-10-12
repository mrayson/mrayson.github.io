
# Cannot build in our own directory
cp mkdocs.yml ../
cp -r docs/ ../
cd ../
mkdocs build

#sitedir=mrayson.github.io
sitedir=website
mv mkdocs.yml $sitedir
cp -r site_tmp/* $sitedir
rm -r site_tmp
#mv docs/ $sitedir
rm -r docs/
cd $sitedir


