#!/bin/bash
#找到文件名中带有小写字母的文件
for file in `ls | grep '[A-Z]'`
do
#逐个把带有小写字母的文件名赋值给变量str
str=`echo $file|tr 'A-Z' 'a-z'`
#逐个重命名
mv $file $str
done

for i in *.png
do 
mv "$i" "${i%-*.png}.png"
done