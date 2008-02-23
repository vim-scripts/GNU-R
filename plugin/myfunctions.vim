" put in local ~/.vim folder
" function to get R
function! RunRProgram()
	set shortmess+=A
	execute 'wa!'
	let currentBuffer = expand("%:p") 
	let outputBuffer = "ROutput"
	let outputDir = "/home/jinxs/.vim/vimSwap/"
	execute "e! "outputDir.outputBuffer""
	let batchFileBuffer = "/home/jinxs/.vim/RVim.bat"
	let s_name = v:servername
	
	execute "e!  "batchFileBuffer""
	execute "%d"
	call append(0, "#!/bin/bash")
	
	call append(2, 'clear')
	call append(3, 'R --no-save < '.currentBuffer.' | tee -a '.outputDir.''.outputBuffer)
	call append(4, 'exit')
	execute "w! "batchFileBuffer"" 
	execute "bw! "outputDir.outputBuffer""
	execute "!exec /home/jinxs/.vim/RVim.bat"
	execute "%d"
	execute "bd! "batchFileBuffer""
	" Note -- use <F5> to open the output file in you current session
endfunction
