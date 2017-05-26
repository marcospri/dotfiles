" Make Vim more useful
set nocompatible
filetype off
filetype plugin indent off

" remember more commands and search history
set history=10000

"Line numbers
set number

" Always show tab bar at the top
set showtabline=2

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
set backspace=indent,eol,start

"Highlight search
set incsearch

"Make searches case-sensitive only if they contain upper-case characters
set ignorecase
set smartcase

" Don't make backups at all
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'w0rp/ale'
Bundle 'Valloric/YouCompleteMe'
Bundle 'fatih/vim-go'
Bundle 'ervandew/supertab'
Bundle 'robertmeta/nofrils'
Bundle 'morhetz/gruvbox'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'ElmCast/elm-vim'
call vundle#end() 

set wildignore+=*/.git/*,*.pyc 

set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on 
"syntax highlighing
syntax on                           

" colors
set termguicolors
set t_ut=""
colorscheme gruvbox
set background=dark

au FocusGained * :redraw!

set pastetoggle=<F2>

let mapleader=","
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>d <Plug>(go-def)

autocmd BufWritePost *.py call Flake8()
