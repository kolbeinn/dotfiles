" plugins
call plug#begin()
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-fugitive'
  Plug 'dracula/vim'
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'earthly/earthly.vim', { 'branch': 'main' }
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()


" configuration
set number
colorscheme dracula
set ttyfast
set tabstop=4
set shiftwidth=4
set cursorline
set cc=80

" key bindings
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
:inoremap ii <Esc>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

