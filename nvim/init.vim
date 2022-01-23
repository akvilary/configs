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

" UNVERIFIED PLUGINS BLOCK
" cmp plugins
Plug 'hrsh7th/nvim-cmp' " The completion plugin
Plug 'hrsh7th/cmp-buffer' " buffer completions
Plug 'hrsh7th/cmp-path' " path completions
Plug 'hrsh7th/cmp-cmdline' " cmdline completions
Plug 'saadparwaiz1/cmp_luasnip' " snippet completions

" Snippets
Plug 'L3MON4D3/LuaSnip' " snippet engine
Plug 'rafamadriz/friendly-snippets' " a bunch of snippets to use
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

require('nvim-autopairs').setup()

require('gitsigns').setup()

require('nvim-tree').setup()

require("project_nvim").setup()

require('telescope').load_extension('project')

local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end

require("luasnip/loaders/from_vscode").lazy_load()

local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

-- Ôóè Ôö® Ô≠Ñ ÔØü Ôëè Ôô± some other good icons
local kind_icons = {
  Text = "Ôùæ",
  Method = "m",
  Function = "Ôûî",
  Constructor = "Ôê•",
  Field = "Óúñ",
  Variable = "Ôö¶",
  Class = "Ô†ñ",
  Interface = "ÔÉ®",
  Module = "Ôíá",
  Property = "ÔÇ≠",
  Unit = "Óàü",
  Value = "Ô¢ü",
  Enum = "ÔÖù",
  Keyword = "Ô†ä",
  Snippet = "ÔÉÑ",
  Color = "Ô£ó",
  File = "Ôúò",
  Reference = "ÔíÅ",
  Folder = "Ôùä",
  EnumMember = "ÔÖù",
  Constant = "Ôõº",
  Struct = "ÔÜ≥",
  Event = "ÔÉß",
  Operator = "Ôöî",
  TypeParameter = "ÔûÉ",
}
-- find more here: https://www.nerdfonts.com/cheat-sheet

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
	["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ["<CR>"] = cmp.mapping.confirm { select = true },
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expandable() then
        luasnip.expand()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif check_backspace() then
        fallback()
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
  },
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      -- Kind icons
      -- vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
      vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
      vim_item.menu = ({
        luasnip = "[LuaSnip]",
        buffer = "[File]",
        path = "[Path]",
      })[entry.source.name]
      return vim_item
    end,
  },
  sources = {
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  documentation = {
    border = { "‚ï≠", "‚îÄ", "‚ïÆ", "‚îÇ", "‚ïØ", "‚îÄ", "‚ï∞", "‚îÇ" },
  },
  experimental = {
    ghost_text = false,
    native_menu = false,
  },
}
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
noremap <Leader>sf :Telescope find_files<CR>

imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>
snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
