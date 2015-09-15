" Make Vim more useful
set nocompatible
filetype off
filetype plugin indent off

"Line numbers
set number

"Display max column lenght
set colorcolumn=80

" show current position at bottom
set ruler                       

" Highlight current line
set cursorline

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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'fatih/vim-go'
Bundle 'nvie/vim-flake8'
call vundle#end() 

set wildignore+=*/.git/*,*.pyc 

set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on 
"syntax highlighing
syntax on                           
set t_Co=256
set background=light
colorscheme molokai
set t_ut=""

au FocusGained * :redraw!

let mapleader=" "
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

autocmd BufWritePost *.py call Flake8()
