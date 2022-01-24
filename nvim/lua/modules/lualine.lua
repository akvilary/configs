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
