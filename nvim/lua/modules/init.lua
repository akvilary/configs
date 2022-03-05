-- DECLARE MODULES WILL BE ON (at every start of neovim)

require('modules.lualine')

require('modules.cmp')

require('modules.dap')

require('modules.lsp')

require('modules.nvim_tree')

require('modules.treessiter')

require('nvim_comment').setup()

require('nvim-autopairs').setup()

require('gitsigns').setup()

require('project_nvim').setup()

require('telescope').load_extension('project')

