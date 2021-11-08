set autoindent
set background=dark
set clipboard=unnamed
set colorcolumn=80
set cursorline
set encoding=utf-8
set expandtab
set fileformat=unix
set fileencoding=utf-8
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set number
set numberwidth=1
set relativenumber
set ruler
set shiftwidth=2
set showcmd
set showmatch
set softtabstop=4
set smartcase
set smartindent
set tabstop=4
set viminfo='25,\"50,n~/.viminfo
set t_Co=256
set t_ut=
syntax on

autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2

so ~/configs/maps.vim
so ~/configs/plugins.vim

colorscheme railscasts
filetype on
filetype plugin indent on

" airline
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline#extension#battery#enable=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif


