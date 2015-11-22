#!/bin/sh
alias mv='mv -i '
alias rm='rm -i '
alias la='/bin/ls -aldF '
alias lt='/bin/ls -ltr '
alias h='history'
alias cgrep='find . -name "*.*c" | xargs grep'
alias hgrep='find . -name "*.h" | xargs grep'
alias mgrep='find . -name "*mk*" | xargs grep'
alias lgrep='find . -name "*log*" | xargs grep'
alias view='vim -R'
alias cctags='ctags --langmap=c:.c.h -f tags -R'

alias open='nautilus'

cs()
{
	if [ $# -eq 1 ]; then
		cd $1;
		ls -rlt
	else
		cd .;
		ls -rlt
	fi
}

sb()
{
	if [ $# -eq 1 ]; then
		if [ -f $1.mk ]; then	
			make -f $1.mk clean all
		else
			echo "gcc -o $1.o -c $1.c -g -m64" && gcc -o $1.o -c $1.c -g -m64 && echo "gcc -o $1 $1.o -m64" && gcc -o $1 $1.o -m64
		fi		
	else
		make clean all
	fi

}
