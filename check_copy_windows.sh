PWD=${PWD##*/}
DIR1=$1
DIR2=$2
cd $DIR1
echo $DIR1
fciv -add . -r -sha1 >/tmp/dir1.txt
cd $DIR2
echo $DIR2
fciv -add . -r -sha1 >/tmp/dir2.txt
fciv -add /tmp/dir1.txt -sha1
fciv -add /tmp/dir2.txt -sha1
cd $PWD
