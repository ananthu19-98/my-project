#!/bin/bash
if [ $# -lt 2 ]
then
echo "parameters is not ok"
echo "newly added"
exit 1
else
echo  " the parameters are ok"
 if [ -f $1 ]
then
echo "file exist"
else
echo "file does not exist"
echo "the parameters is ok"
fi
fi
if grep -Fxq $2 $1
then
echo "name already exists"
else
sed -i '$a'"$2" $1 
fi
f=$1
echo "file content"
while read f
do
 name=$f
 echo "$name"
done <$1

