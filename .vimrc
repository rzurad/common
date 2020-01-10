call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-sleuth'
Plug 'sheerun/vim-polyglot'
Plug 'Valloric/YouCompleteMe'

call plug#end()

set hidden "Allows multiple buffers to be managed
set history=500 "remember last 500 commands
set wildmode=list:longest,full "better tab completion
set ignorecase "these next 2 make /-style and *-style searches case insensitive,
set smartcase  "and case-sensitive, respectively

set nocompatible "allows for backwards imcompatible changes to be in effect
set bs=2
set ai
set ruler

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab

set expandtab
set showmatch

syntax on
filetype on
filetype plugin on

set hlsearch " highlights searched terms
set incsearch " searches as you type in terms

set t_Co=256
colorscheme lucius 
hi Normal guibg=NONE ctermbg=NONE

set laststatus=2
set noshowmode

let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ }

let g:netrw_liststyle = 3
set number
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
    \ 'dir': 'node_modules\|git'
    \ }

set nomodeline

noremap ; l
noremap l k
noremap k j
noremap j h

let g:netrw_banner = 0
:set directory=$HOME/.vim/swapfiles//
