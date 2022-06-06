" ALL KEY BINDINGS ARE HERE

let mapleader="\<Space>"
nnoremap <Leader>x :BufferClose<CR>
nnoremap <Leader>q :BufferClose<CR><C-w><C-w>  

nnoremap <Leader>. :BufferNext<CR>
nnoremap <Leader>, :BufferPrevious<CR>
noremap <S-w> <C-w><C-w>
noremap <Leader>h <Esc><C-w>h
noremap <Leader>j <Esc><C-w>j
noremap <Leader>k <Esc><C-w>k
noremap <Leader>l <Esc><C-w>l
nnoremap <Leader>o <Esc>o<Esc>
nnoremap <Leader>O <Esc>O<Esc>
nnoremap <Leader>f <C-f>
nnoremap <Leader>b <C-b>
noremap <Leader>a ggVG
noremap <Leader>d "_d
noremap <Leader>dd "_dd

noremap <Leader>e :NvimTreeFindFileToggle<CR>
noremap <Leader>t :ToggleTerm<CR>
noremap <Leader>T :ToggleTerm direction=float<CR>
noremap <Leader>/ :CommentToggle<CR>
noremap <Leader>st :Telescope live_grep<CR>
noremap <Leader>sf :Telescope find_files<CR>
nnoremap =d :lua require('dapui').toggle()<CR>
nnoremap =bb :lua require'dap'.toggle_breakpoint()<CR>
nnoremap =bl :lua require'telescope'.extensions.dap.list_breakpoints{}<CR>
nnoremap =bc :lua require'dap'.clear_breakpoints()<CR>
nnoremap =bv :lua require'telescope'.extensions.dap.variables{}<CR>
nnoremap =r :lua require'dap'.continue()<CR>
nnoremap =c :lua require'dap'.run_to_cursor()<CR>
nnoremap =i :lua require'dap'.step_into()<CR>
nnoremap =o :lua require'dap'.step_over()<CR> 
nnoremap =t :lua require'dap'.repl.toggle()<CR>

nnoremap <silent><F3> :MaximizerToggle<CR>
vnoremap <silent><F3> :MaximizerToggle<CR>gv
inoremap <silent><F3> <C-o>:MaximizerToggle<CR>

