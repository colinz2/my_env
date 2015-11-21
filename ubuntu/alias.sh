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
alias cdb='cd ~/bin'
alias cde='cd ~/src'

alias open='nautilus'

cs()
{
	if [ $# -eq 1 ];then
		cd $1;
		ls -rlt
	else
		cd .;
		ls -rlt
	fi
}

