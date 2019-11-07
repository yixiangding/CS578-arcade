#!/bin/sh

#script to ant-build tomcat 

filenm=C:/Users/axs1461/ArcadeTomcat/Round2/cvevers-combos-run.txt

while IFS=' ' read -r line || [[ -n "$line" ]];
do  
	echo $line 
	
	java -jar edu.usc.softarch.arcade.AcdcWithSmellDetection.jar C:/Users/axs1461/ArcadeTomcat/Round2/$line/src C:/Users/axs1461/ArcadeTomcat/Round2/$line/output output/build/bin

done <"$filenm"