#!/bin/sh

#script to ant-build tomcat 

filenm=C:/Users/axs1461/ArcadeTomcat/Round2/cvevers-combos-run.txt

while IFS=' ' read -r line || [[ -n "$line" ]];
do  
	echo $line 
	java -jar batchdecayv4.0.jar C:/Users/axs1461/ArcadeTomcat/Round2/$line/output/clustered C:/Users/axs1461/ArcadeTomcat/Round2/$line/output/dep> C:/Users/axs1461/ArcadeTomcat/Round2/$line/output/arcade/decay-m-v5.log

done <"$filenm"