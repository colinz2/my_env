set nocompatible
set ffs=unix

set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set autoindent
set cindent

set textwidth=80

"编码
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,latin1,gb2312

set wildmenu

syntax on
filetype plugin on



map <F8> :call Rungdb()<CR>
func! Rungdb()
	exec "w"
	exec "!g++ % -g -o %<"
	exec "!gdb ./%<"
endfunc

