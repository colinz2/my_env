
alias gitpush='git push -u origin master'

gitcommit()
{
	if [ $# -eq 1 ]; then
		git commit -m $1;
	else
		git commit -m "commit"
	fi

}

