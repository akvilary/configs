" ALL KEY BINDINGS ARE HERE

let mapleader="\<Leader>"
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

nnoremap <Leader>e :NvimTreeFindFileToggle<CR>
nnoremap <Leader>t :ToggleTerm<CR>
nnoremap <Leader>T :ToggleTerm direction=float<CR>
noremap <Leader>/ :CommentToggle<CR>
noremap <Leader>st :Telescope live_grep<CR>
noremap <Leader>sf :Telescope find_files<CR>

