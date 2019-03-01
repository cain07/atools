#!/bin/sh 
echo $1 $2   
list_alldir(){  
    for file2 in `ls -a $1`  
    do  
        if [ x"$file2" != x"." -a x"$file2" != x".." ];then  
            if [ -d "$1/$file2" ];then  
                echo "$1/$file2"  
                list_alldir "$1/$file2"  
			else
				echo "$1/$name1.png -> $1/$name2.png"
				mv "$1/$name1.png" "$1/$name2.png"
			fi  
        fi  
    done  
}  


name1="$1"
name2="$2"
#testif 测试
list_alldir . "$name1" "$name2"

#可以批量修改文件夹下面指定文件的名字
#命令行参数 1原来的名字 2 修改的名字
