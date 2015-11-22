ulimit -c unlimited

export DVLP_LIB=$DVLP_DIR/lib
export DVLP_INC=$DVLP_DIR/inc
export DVLP_BIN=$DVLP_DIR/bin
export DVLP_MK=$DVLP_DIR/mk

export LD_LIBRARY_PATH=$DVLP_LIB
export PKG_CONFIG_PATH=$DVLP_LIB/pkgconfig

export PATH=$PATH:$DVLP_MYENV
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$DVLP_DIR/bin