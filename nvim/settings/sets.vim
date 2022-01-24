" ALL VIM OPTIONS (SETS) ARE HERE

set nocompatible
syntax enable
filetype plugin on

colorscheme gruvbox

set path+=**

set updatetime=50

set fileencoding=utf-8
set nobackup
set undofile
set history=1000
set mouse=a
set clipboard=unnamed

" completion
set wildmenu
" set wildmode=longest,list,full

" ignores for completion
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

set shiftwidth=4
set tabstop=4
set expandtab
set ruler
set number
set nowrap
set noshowmode
set signcolumn=yes
set colorcolumn=80
set ai
set si
set ignorecase
set smartcase
set incsearch
set nohlsearch
set scrolloff=5
set showcmd
set lbr

