ulimit -c unlimited

export DVLP_LIB=$DVLP/lib
export DVLP_INC=$DVLP/inc
export DVLP_BIN=$DVLP/bin
export DVLP_MK=$DVLP/mk

export LD_LIBRARY_PATH=$DVLP_LIB
export PKG_CONFIG_PATH=$DVLP_LIB/pkgconfig

export PATH=$PATH:$DVLP_MYENV
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$DVLP/bin