set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=2
set signcolumn=yes
set hlsearch
set ignorecase

call plug#begin('$HOME/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'

call plug#end()

set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

let mapleader=" "
" shortcuts
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" nerdtree
nmap <Leader>f :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

" js
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" fzf
nmap <Leader>n :Files 

" lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
