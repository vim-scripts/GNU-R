"adds filetype, put in local ~/.vim folder
augroup filetype
au! BufRead,BufNewFile *.R		set filetype=r
augroup END
