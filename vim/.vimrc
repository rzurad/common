"if exists('+colorcolumn')
"    set colorcolumn=81
"else
"    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>81v.\+', -1)
"endif

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

au BufNewFile,BufRead *.pjs setfiletype javascript
au BufNewFile,BufRead *.pcss setfiletype css
