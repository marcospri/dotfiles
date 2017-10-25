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

set clipboard^=unnamed,unnamedplus

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'w0rp/ale'
Bundle 'Valloric/YouCompleteMe'
Bundle 'morhetz/gruvbox'
Bundle 'ElmCast/elm-vim'
Bundle 'mhinz/vim-grepper'
Bundle 'christoomey/vim-tmux-navigator'
call vundle#end() 

set wildignore+=*/.git/*,*.pyc 

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


" ale (autocompletion)
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" auto closing of the preview window when the user accepts the offered completion string
let g:ycm_autoclose_preview_window_after_completion=1

nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

