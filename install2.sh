#/bin/bash

target_rc=$HOME/.bashrc
bak_dir=$HOME/.bakdir
Date=`date +%Y%m%d`
Time=`date +%H%M%S`
PWD=`pwd`

chmod a+x set.sh
chmod a+x set_bash.sh

if [ -d $bak_dir ]; then
	echo "backup $target_rc"
else
	mkdir $bak_dir
fi

 
cp $target_rc $bak_dir/bashrc_$Time

echo -e \
"#colin env install v.0.0.1 \n"\
"#-------$Date-$Time--------\n"\
"DVLP_DIR=/opt/dev\n"\
"if [ -f $PWD/set.sh ]; then\n"\
"$PWD/set.sh &\n"\
"fi\n"\
"if [ -f $PWD/set_bash.sh ]; then\n"\
". $PWD/set_bash.sh\n"\
"fi\n"\
"#-------------------------\n" >>	$target_rc

echo "installed"
