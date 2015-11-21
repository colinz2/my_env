if [ -d $DVLP_ALIAS ]; then
  for i in $DVLP_ALIAS/*.sh; do
    if [ -r $i ]; then
      . $i
    fi  
  done
  unset i
fi

