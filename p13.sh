First="$1"
Second="$2"
if [ $# -ne 2 ]
then
    echo "$(basename $0) dir1 dir2"
    exit 1
fi

if [ ! -d $First ]
then
    echo "Directory $First does not exists!"
    exit 2
fi


if [ ! -d $Second ]
then
    echo "Directory $Second does not exists!"
    exit 2
fi

for f in $Second/*
do
    if [ -f $f ]
    then
        tFile="$First/$(basename $f)"
        if [ -f $tFile ]
        then
            echo -n "THe following files were deleted since Duplicated"
            echo -n "$tFile was Deleted"
        /bin/rm $tFile
        [ $? -eq 0 ] && echo "done" || echo "failed"
        fi
    fi
done
