#!/bin/sh 
#LIST=`ls|awk ' BEGIN {FS="."; ORS="\\\n"} {print "* [["$1"]]";}'`
echo 
ls|grep -v "*~"|grep -v "index"|awk ' BEGIN {FS="."} {print "* [["$1"]]";}'
echo
#echo -e $LIST
#LIST="asdas"
#cat index.temp.md | \
#sed -e "s/\$LIST/$LIST/g" > index.md
