local dap = require('dap')
dap.adapters.python = {
  type = 'executable';
  command = '/Users/user/.virtualenvs/debugpy/bin/python';
  args = { '-m', 'debugpy.adapter' };
}
dap.configurations.python = {
  {
    -- The first three options are required by nvim-dap
    type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = 'launch';
    name = "Launch file";
    program = "${file}";
}
}
-- local dap = require('dap')
--   dap.defaults.fallback.terminal_win_cmd = 'belowright 7split new'
require('telescope').load_extension('dap')
require('dapui').setup()
require('nvim-dap-virtual-text').setup()
