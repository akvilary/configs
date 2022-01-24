-- DECLARE MODULES WILL BE ON (at every start of neovim)

require('modules.lualine')

require('modules.cmp')

require('nvim_comment').setup()

require('nvim-autopairs').setup()

require('gitsigns').setup()

require('nvim-tree').setup()

require('project_nvim').setup()

require('telescope').load_extension('project')

