
if [ -d $DVLP_ALIAS_DIR ]; then
  for i in $DVLP_ALIAS_DIR/*.sh; do
    if [ -r $i ]; then
      . $i
    fi  
  done
  unset i
fi

