let mapleader=" "

" save and quit
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>

" quick semi
noremap <Leader>; $a;<Esc>

" split resize
noremap <Leader>> 10<C-w>>
noremap <Leader>< 10<C-w><

" short commands
cnoreabbrev tree NERDTreeToggle
cnoreabbrev blame Gbmale
cnoreabbrev find NERDTreeFind
cnoreabbrev diff Gdiff

" plugs
map <Leader>nt :NERDTreeFind<CR>
map <Leader>s <Plug>(easymotion-s2)

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

" tmux
noremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
noremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
noremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
noremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

" copy path
noremap <Leader>kp :let @+=expand("%")<CR>

" Use <C-space> to trigger completion
"if $filetype == "javascript" || $filetype == "python"
"	inoremap <c-space> <C-x><C-u>
"else
"	inoremap <silent><expr> <c-space> coc#refresh()
"endif

set splitright
function! OpenTerminal()
	" move to right most buffer
	execute "normal \<C-l>"
	execute "normal \<C-l>"
	execute "normal \<C-l>"
	execute "normal \<C-l>"

	let bufNum = bufnr("%")
	let bufType = getbufvar(bufNum, "&buftype", "not found")

	if bufType == "terminal"
		" close existing terminal
		execute "q"
	else
		" open terminal
		execute "vsp term://zsh"

		" turn off numbers
		execute "set nonu"
		execute "set nornu"

		" toggle insert on enter/exit
		silent au BufLeave <buffer> stopinsert!
		silent au BufWinEnter,Winenter <buffer> startinsert!

		" set maps inside terminal buffer
		execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
		execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
		execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
		execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

		startinsert!
	endif
endfunction

nnoremap <C-t> :call OpenTerminal()<CR>
