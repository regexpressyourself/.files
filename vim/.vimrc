"   SAM MESSINA .VIMRC

nmap <C-x> :!~/scripts/java_compiler.sh<CR>
"autocmd BufWritePre * :%s/\s\+$//e "kills trailing whitespace on :w
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
" ^ make smart indent work properly for Python

" Tabs or Spaces?
set tabstop=2       " a hard TAB displays as 2 columns
set shiftwidth=2    " operation >> indents 4 columns; << unindents 4 columns
set shiftround      " round indent to multiple of 'shiftwidth'
set laststatus=2

set guioptions-=m " turn off menu bar
set guioptions-=T " turn off toolbar
set guioptions-=L " turn off left scrollbar
set guioptions-=l

" Color Scheme-------------------------------------------------------------
set t_Co=256       " use 256 color terminal
set background=dark " light | dark
colorscheme gruvbox " zenburn jellybeans

" Leader Fun ----------------------------------------
let mapleader = "\<Space>" "leader to space

" space-w saves
nnoremap <Leader>w :w<CR> 

" leader y/p to copy to clipboard
vmap <Leader>y "*y 
vmap <Leader>d "*d
nmap <Leader>p "*p
nmap <Leader>P "*P
vmap <Leader>p "*p
vmap <Leader>P "*P

noremap <leader>h :bp<CR>
noremap <leader>l :bn<CR>
noremap <leader>k :ls<CR>
noremap <leader>j :b<CR>

"expand selected region on hitting v
vmap v <Plug>(expand_region_expand)
"reduce selected region on hitting c-v
vmap <C-v> <Plug>(expand_region_shrink)
" go to end of paste
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
nnoremap <CR> G
nnoremap <BS> gg



"Classics-------------------------------------------------------------------
syntax enable
syntax on 
filetype indent on
filetype plugin on
filetype on
set clipboard=unnamed
set autowriteall
set expandtab       " insert spaces when hitting TABs
set nocompatible
set colorcolumn=80  " highlights text after column [85]
set autoindent      " align the new line indent with the previous line
set hlsearch        " highlight search results
set cursorline      " highlights current cursor line...
set ttyfast         " big baller, quick scroller
set ruler           " show line, word, etc in status bar
set wrap            " wraps words. alt: nowrap
set linebreak
set relativenumber  " display lines in distance relative to current line
set list            " shows whitespace characters
set number
set encoding=utf-8  " allows utf-8 characters
set showmode        " shows current mode
set scrolloff=3     " scrolls when cursor is [3] lines from screen end
set showcmd         " show what command is occuring in the bar
set hidden          " saves hidden copy of unsaved files on exit
set wildmenu        " command line auto-completion?
set visualbell      " baby got beep
set wildmode=list:longest " complimentary with above

:nmap j gj
:nmap k gk

" movement assistance
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"

:au WinEnter * :setlocal number
:au WinLeave * :setlocal nonumber
"Always show line numbers, but only in current window.
cnoremap sudow w !sudo tee % >/dev/null


"A Little Extra------------------------------------------------------------
au FocusLost * :wa  " save file when alt-tabbing

"Plugins-------------------------------------------------------------------

  " or
  autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
  " for html
  autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
  " for css or scss
  autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
  "undo for php
  autocmd FileType php noremap <buffer> <c-f> :call HtmlBeautify()<cr>
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['php'] = 'html,php'


au BufNewFile *.php set ft=php.html


nnoremap <F8> :tabn<CR>
nnoremap <F7> :tabp<CR>

set ttimeoutlen=50

" Window movement shortcuts
" move to the window in the direction shown, or create a new window

map <silent> <C-h> :call WinMove('h')<cr>
map <silent> <C-j> :call WinMove('j')<cr>
map <silent> <C-k> :call WinMove('k')<cr>
map <silent> <C-l> :call WinMove('l')<cr>

function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction
