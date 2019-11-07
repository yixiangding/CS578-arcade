#!/bin/sh

#script to ant-build tomcat 

filenm=C:/Users/axs1461/ArcadeTomcat/3rdRound-2.txt

while IFS=' ' read -r line || [[ -n "$line" ]];
do  
	echo $line 
	java -jar batchclusterv2.0.jar C:/Users/axs1461/ArcadeTomcat/Round3/$line/src C:/Users/axs1461/ArcadeTomcat/Round3/$line/arc/output output/build/bin

done <"$filenm"