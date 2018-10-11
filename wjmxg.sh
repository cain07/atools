#!/bin/bash
for i in *.png
do 
	strA="-"
	if [[ $i =~ $strA ]]
	then  
		mv "$i" "${i%-*.png}.png"
	fi
done