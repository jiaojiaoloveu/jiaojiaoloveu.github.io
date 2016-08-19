#/bin/bash
echo $1
cd assets
sh pic.sh
echo "finish pics"
cd ..
jekyll build
echo "build finish"
git add .
git commit -m $1
git push -u origin source
echo "source push finish"
cd _site
git add .
git commit -m $1
git push -u origin master
echo "master push finish"
