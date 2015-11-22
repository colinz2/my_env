#
#colin git alias, source it in .bashrc
alias gitchk='git checkout'
alias gitck='git checkout'
alias gitdf='git diff HEAD'
alias gitst='git status'
alias gitpom='git push -u origin master'
alias gitcm='git commit -m'
alias gitbr='git branch'

gitcl()
{
	if [ $# -eq 1 ]; then
		git clone git@github.com:$1
	else
		echo "gitcl github_USER/REPO.git"
	fi
}
