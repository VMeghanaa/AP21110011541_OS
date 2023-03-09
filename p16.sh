echo "Enter file name"
read file
if [ ! -f $file ] 
then
echo "the file doesnot exists "
else
SPELL="/usr/bin/ispell"
 
# make sure argument is given to script
if [ $# -eq 0 ]
then
	echo "Syntax: $(basename $0) file"
	exit 1
fi
 
if [ ! -f $file ]
then
	echo "Error - $file not a file!"
	exit 2
fi
 
# make sure ispell is installed
if [ ! -x $SPELL ]
then
	echo "Error - $SPELL binary file does NOT exists; cannot check the spellings of $file."
	exit 3
fi
