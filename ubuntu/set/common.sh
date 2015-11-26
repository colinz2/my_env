ulimit -c unlimited

export DVLP_LOCAL=$DVLP_DIR/local
export DVLP_LIB=$DVLP_LOCAL/lib
export DVLP_INC=$DVLP_LOCAL/include
export DVLP_BIN=$DVLP_LOCAL/bin

export DVLP_MK=$DVLP_DIR/mk

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DVLP_LIB
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$DVLP_LIB/pkgconfig

export PATH=$PATH:$DVLP_MYENV
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$DVLP_BIN