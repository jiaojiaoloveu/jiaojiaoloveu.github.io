#/bin/bash
echo $1
jekyll build
git add .
git commit -m $1
git push -u origin source
cd _site
git add .
git commit -m $1
git push -u origin source
