" ALL PLUGINS TO INSTALL AND UPDATE ARE HERE

call plug#begin()
" VERIFIED PLUGINS BLOCK
" all for syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'
Plug 'windwp/nvim-autopairs'

" Appearence
Plug 'gruvbox-community/gruvbox'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-lualine/lualine.nvim'

" Debug
Plug 'mfussenegger/nvim-dap'
" Plug 'mfussenegger/nvim-dap-python'
Plug 'rcarriga/nvim-dap-ui'
Plug 'rcarriga/cmp-dap'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'nvim-telescope/telescope-dap.nvim'
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

" cmp plugins
Plug 'hrsh7th/nvim-cmp' " The completion plugin
Plug 'hrsh7th/cmp-buffer' " buffer completions
Plug 'hrsh7th/cmp-path' " path completions
Plug 'hrsh7th/cmp-cmdline' " cmdline completions
Plug 'saadparwaiz1/cmp_luasnip' " snippet completions
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'

" Snippets
Plug 'L3MON4D3/LuaSnip' " snippet engine
Plug 'rafamadriz/friendly-snippets' " a bunch of snippets to use

" LSP
Plug 'neovim/nvim-lspconfig' " enable LSP
Plug 'williamboman/nvim-lsp-installer' " language server installer
call plug#end()

