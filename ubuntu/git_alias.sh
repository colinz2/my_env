#
#colin git alias, source it in .bashrc
alias gitchk='git checkout'
alias gitdf='git diff HEAD'
alias gitst='git status'
alias gitpom='git push -u origin master'

gitcommit()
{
	if [ $# -eq 1 ]; then
		git commit -m $1;
	else
		git commit -m "commit"
	fi

}

gitcl()
{
	git clone git@github.com:$1

}
