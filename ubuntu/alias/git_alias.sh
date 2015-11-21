#
#colin git alias, source it in .bashrc
alias gitchk='git checkout'
alias gitdf='git diff HEAD'
alias gitst='git status'
alias gitpom='git push -u origin master'
alias gitcm='git commit -m'

gitcl()
{
	git clone git@github.com:$1

}
