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


if [ ! -d "$HOME/applications" ]; then
	mkdir $HOME/applications
fi

export PATH=$PATH:$HOME/applications

for i in $HOME/applications/* ; do
	if [ -d "$i/bin" ]; then
		export PATH=$PATH:$i/bin
	fi
done
unset i
