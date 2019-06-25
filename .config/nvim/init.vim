call plug#begin('~/.local/share/nvim/plugged')

" Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'vim-scripts/YankRing.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'bling/vim-airline'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-sensible'
Plug 'w0rp/ale'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'AlessandroYorba/Alduin'
Plug 'szorfein/fromthehell.vim'
Plug 'mileszs/ack.vim'
Plug 'sbdchd/neoformat'

call plug#end()

syntax enable
set background=dark
set t_Co=256
colorscheme fromthehell
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
filetype plugin indent on
filetype plugin on

set hlsearch

set number

let mapleader = '\'
map <leader>n :Vexplore<CR>
map <leader>\ :FZF<CR>

"map <Tab> <C-W>W:cd %:p:h<CR>:<CR>

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set mouse=a

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,*/bower_components/*,*/tmp/*,*/deps/*

" TRAILING WHITESPACES MUST DIE
autocmd BufWritePre * :%s/\s\+$//e

let g:ale_linters = {
\   'python': ['flake8', 'pylint']
\}

let g:airline#extensions#ale#enabled = 1
let g:jsx_ext_required = 0

" Use ag with ack.vim
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:neoformat_enabled_yaml = []
let g:neoformat_enabled_python = ['black']
let g:neoformat_python_black = {
            \ 'exe': 'black',
            \ 'stdin': 1,
            \ 'args': ['--skip-string-normalization', '--skip-numeric-underscore-normalization', '-'],
            \ }
augroup fmt
  autocmd!
  autocmd BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | endtry
augroup END
nnoremap <silent> <leader>f :w<CR>
