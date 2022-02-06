" ALL KEY BINDINGS ARE HERE

" let mapleader="\<Space>"
nnoremap <Space>x :BufferClose<CR>
nnoremap <Space>q :BufferClose<CR><C-w><C-w>  

nnoremap <Space>. :BufferNext<CR>
nnoremap <Space>, :BufferPrevious<CR>
noremap <Space>s <C-w><C-w>
noremap <Space>h <Esc><C-w>h
noremap <Space>j <Esc><C-w>j
noremap <Space>k <Esc><C-w>k
noremap <Space>l <Esc><C-w>l
nnoremap <Leader>o <Esc>o<Esc>
nnoremap <Leader>O <Esc>O<Esc>
nnoremap <Leader>f <C-f>
nnoremap <Leader>b <C-b>
noremap <Leader>a ggVG

nnoremap <Leader>e :NvimTreeFindFileToggle<CR>
nnoremap <Leader>t :ToggleTerm<CR>
nnoremap <Leader>T :ToggleTerm direction=float<CR>
noremap <Space>/ :CommentToggle<CR>
noremap <Leader>st :Telescope live_grep<CR>
noremap <Leader>sf :Telescope find_files<CR>

