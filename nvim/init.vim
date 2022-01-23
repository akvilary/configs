set nocompatible
syntax enable
filetype plugin on

set path+=**

let g:netrw_banner=0

set history=1000
set shiftwidth=4
set tabstop=4
set expandtab
set ruler
set number
set nowrap
set signcolumn=yes
set colorcolumn=80

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

set ai
set si
set ignorecase
set smartcase
set incsearch
set nohlsearch
set scrolloff=5
set showcmd
set lbr
set clipboard=unnamed

call plug#begin()
" VERIFIED PLUGINS BLOCK
" all for syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'windwp/nvim-autopairs'

" Appearence
Plug 'gruvbox-community/gruvbox'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-lualine/lualine.nvim'

" Debug
Plug 'mfussenegger/nvim-dap'
Plug 'Pocco81/DAPInstall.nvim'
Plug 'szw/vim-maximizer'

" Telescope plugins
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-project.nvim'

" Utilities
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ahmedkhalf/project.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'terrortylor/nvim-comment'

" Git
Plug 'lewis6991/gitsigns.nvim'

call plug#end()

lua << END
require('lualine').setup { 
    options = { 
        theme = 'gruvbox_dark', 
        section_separators = { left = '', right = '' }, 
        component_separators = { left = '', right = '' } 
        },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
    }

require('nvim_comment').setup()

require('nvim-autopairs').setup {}

require('gitsigns').setup()

require'nvim-tree'.setup()

require("project_nvim").setup {}

require'telescope'.load_extension('project')

END

colorscheme gruvbox

" let mapleader="\<Space>"
nnoremap <Leader>e :NvimTreeFindFileToggle<CR>
noremap <Space>h <Esc><C-w>h
noremap <Space>j <Esc><C-w>j
noremap <Space>k <Esc><C-w>k
noremap <Space>l <Esc><C-w>l
nnoremap <Leader>o <Esc>o<Esc>
nnoremap <Leader>O <Esc>O<Esc>
nnoremap <Leader>f <C-f>
nnoremap <Leader>b <C-b>
noremap <Leader>a ggVG
nnoremap <Leader>t :ToggleTerm<CR>
nnoremap <Leader>T :ToggleTerm direction=float<CR>
noremap <Space>/ :CommentToggle<CR>
noremap <Leader>st :Telescope live_grep<CR>

