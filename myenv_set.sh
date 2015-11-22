#!/bin/bash

#fullfile=`pwd`/set.sh
#basefilename=$(basename "$fullfile")
#extension="${filename##*.}"
#filename="${filename%.*}"
#echo $basefilename
#echo $extension
#echo $filename 
DVLP_SET=$DVLP_MYENV/$DVLP_SYS/set

if [ -d $DVLP_SET ]; then
  for i in $DVLP_SET/*.sh; do
    if [ -r $i ]; then
    	echo . $i
		. $i
    fi  
  done
  unset i
fi
