DVLP_ALIAS=$DVLP_MYENV/$DVLP_SYS/alias

if [ -d $DVLP_ALIAS ]; then
  for i in $DVLP_ALIAS/*.sh; do
    if [ -r $i ]; then
    	echo . $i
      	. $i
    fi  
  done
  unset i
fi

