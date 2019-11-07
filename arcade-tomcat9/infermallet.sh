#!/bin/sh

#script to ant-build tomcat 

filenm=C:/Users/axs1461/ArcadeTomcat/3rdRound.txt

while IFS=' ' read -r line || [[ -n "$line" ]];
do  
	echo $line 
	./ext-tools/mallet-2.0.7/bin/mallet train-topics --input C:/Users/axs1461/ArcadeTomcat/Round3/$line/arc/output/base/topicmodel.data --inferencer-filename C:/Users/axs1461/ArcadeTomcat/Round3/$line/arc/output/base/infer.mallet --num-top-words 50 --num-topics 100 --num-threads 3 --num-iterations 100 --doc-topics-threshold 0.1


done <"$filenm"