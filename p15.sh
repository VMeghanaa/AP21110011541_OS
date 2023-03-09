echo "Enter file name: "
reas ss
if [ ! -f $ss ]
then
echo "the file doesn't exists"
else
m=$(stat -c %y $s)
echo 'last modification : $m"
fi
