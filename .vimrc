" Make Vim more useful
set nocompatible
filetype off

"Line numbers
set number

"Display max column lenght
set colorcolumn=80

" show current position at bottom
set ruler                       

" Highlight current line
set cursorline

"syntax highlighing
syntax on                           
"enable loading indent file for filetype
filetype plugin indent on    

"Indent with 4 spaces
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"Highlight search
set incsearch

"Make searches case-sensitive only if they contain upper-case characters
set ignorecase
set smartcase

"Local dirs
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'

set wildignore+=*/.git/*,*.pyc 

filetype plugin indent on
