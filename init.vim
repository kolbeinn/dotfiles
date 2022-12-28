" plugins
call plug#begin()
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
set splitright
set splitbelow
set tabstop=4
set cursorline

" key bindings
:inoremap ii <Esc>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

