"   SAM MESSINA .VIMRC

" Tabs/Spaces
set expandtab       " insert spaces when hitting TABs
set shiftround      " round indent to multiple of 'shiftwidth'
"set laststatus=2
filetype indent on
filetype plugin on

" Basics
filetype on
syntax enable
syntax on
set clipboard=unnamedplus
set autowriteall
set autowrite
set nocompatible
set autoindent      " align the new line indent with the previous line
set hlsearch        " highlight search results
set cursorline      " highlights current cursor line...
set ttyfast         " big baller, quick scroller
set ruler           " show line, word, etc in status bar
set wrap "nowrap    " wraps words
set linebreak
set relativenumber  " display lines in distance relative to current line
set nolist            " shows whitespace characters
set number
set encoding=utf-8  " allows utf-8 characters
set showmode        " shows current mode
set scrolloff=3     " scrolls when cursor is [3] lines from screen end
set showcmd         " show what command is occuring in the bar
set hidden          " saves hidden copy of unsaved files on exit
set wildmenu        " command line auto-completion
set wildmode=list:longest " complimentary with above
set visualbell      " baby got beep
set ttimeoutlen=50
"set foldmethod=indent
au FocusLost * silent! wa  " save file when alt-tabbing

set noshowmatch

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
