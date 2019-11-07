#!/bin/sh

#script to ant-build tomcat 

filenm=C:/Users/axs1461/ArcadeTomcat/3rdRound.txt

while IFS=' ' read -r line || [[ -n "$line" ]];
do  
	echo $line 
	./ext-tools/mallet-2.0.7/bin/mallet import-dir --input C:/Users/axs1461/ArcadeTomcat/Round3/$line/src --remove-stopwords TRUE --keep-sequence TRUE --output C:/Users/axs1461/ArcadeTomcat/Round3/$line/arc/output/base/topicmodel.data

done <"$filenm"