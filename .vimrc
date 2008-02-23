" put in ~/ folder
" setting up for use of my own syntax file
	let myfiletypefile = "/home/jinxs/.vim/myfiletypes.vim"
"       loading "/home/jinxs/.vim/myfunctions.vim"
	execute "source /home/jinxs/.vim/myfunctions.vim"


"turn on syntax highlighting
syntax on

filetype plugin on
set grepprg=grep\ -nH\ $*
set nu!

filetype indent on