#!/bin/sh

#script to ant-build tomcat 

filenm=C:/Users/axs1461/ArcadeTomcat/3rdRound.txt

while IFS=' ' read -r line || [[ -n "$line" ]];
do  
	echo $line 
	java -jar edu.usc.softarch.arcade.util.ldasupport.PipeExtractor.jar C:/Users/axs1461/ArcadeTomcat/Round3/$line/src C:/Users/axs1461/ArcadeTomcat/Round3/$line/arc/output/base/

done <"$filenm"