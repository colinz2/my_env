#/bin/bash
#colin 2015

#set up
target_rc=$HOME/.bashrc
bak_dir=$HOME/.bakdir
Date=`date +%Y%m%d`
Time=`date +%H%M%S`
PWD=`pwd`

#
chmod a+x set.sh
chmod a+x set_bash.sh

#back up bashrc
if [ -d $bak_dir ]; then
	echo "back $target_rc"
else
	mkdir $bak_dir
fi
cp $target_rc $bak_dir/bashrc_$Time

#write command to bashrc
echo "#colin env install v.0.0.1,"				>>	$target_rc	
echo "#-------$Date-$Time--------"				>>	$target_rc
echo "DVLP_DIR=/opt/dev"						>>  $target_rc
echo "if [ -f $PWD/set.sh ]; then"				>>	$target_rc
echo "$PWD/set.sh &"							>>	$target_rc
echo "fi"										>>	$target_rc
echo "if [ -f $PWD/set_bash.sh ]; then"			>>	$target_rc
echo ". $PWD/set_bash.sh"						>>	$target_rc
echo "fi"										>>	$target_rc
echo "#-------------------------"				>>	$target_rc

echo "installed"
