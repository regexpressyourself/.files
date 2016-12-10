"   SAM MESSINA .VIMRC

"Plugins-------------------------------------------------------------------
call plug#begin()
Plug 'https://github.com/scrooloose/syntastic.git'
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plug 'https://github.com/bling/vim-airline.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/terryma/vim-multiple-cursors.git'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/tpope/vim-sensible.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/SirVer/ultisnips.git'
Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

" let g:ulti_expand_or_jump_res = 0 "default value, just set once
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" function! Ulti_ExpandOrJump_and_getRes()
"   call UltiSnips#ExpandSnippetOrJump()
"   return g:ulti_expand_or_jump_res
" endfunction

" inoremap <CR> <C-R>=(Ulti_ExpandOrJump_and_getRes() > 0)?"":"\n"<CR>


" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1


" let g:ycm_use_ultisnips_completer = 1
"imap <Tab> <Plug>snipMateNextOrTrigger
"smap <Tab> <Plug>snipMateNextOrTrigger
"Java-----------------------------------------------------------------------
"let g:EclimCompletionMethod = 'omnifunc'
nmap <silent> <C-b> :NERDTreeToggle<CR>
nmap <C-x> :!~/scripts/java_compiler.sh<CR>
nmap <C-q> :ProjectCreate . -n java<CR>
set tags=./tags;/

"map <C-n> :ProjectTreeToggle<CR>  " Toggle File Tree


"Python---------------------------------------------------------------------
"set tabstop=4       " a hard TAB displays as 4 columns
"set shiftwidth=4    " operation >> indents 4 columns; << unindents 4 columns
"set shiftround      " round indent to multiple of 'shiftwidth'
"autocmd BufWritePre * :%s/\s\+$//e "kills trailing whitespace on :w
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
" ^ make smart indent work properly

"Markdown-------------------------------------------------------------------
set tabstop=2       " a hard TAB displays as 2 columns
set shiftwidth=2    " operation >> indents 4 columns; << unindents 4 columns
set shiftround      " round indent to multiple of 'shiftwidth'
set laststatus=2

"GVIM-----------------------------------------------------------------------
set guioptions-=m " turn off menu bar
set guioptions-=T " turn off toolbar
set guioptions-=L " turn off left scrollbar
set guioptions-=l
"
" Color Scheme-------------------------------------------------------------
set t_Co=256       " use 256 color terminal
set background=dark "light | dark"
"colorscheme zenburn
"colorscheme jellybeans
colorscheme gruvbox

"Boost Producticity sheerun article ---------------------------------------
let mapleader = "\<Space>" "leader to space
"space-w saves
nnoremap <Leader>w :w<CR> 
" leader y/p to copy to clipboard
vmap <Leader>y "*y 
vmap <Leader>d "*d
nmap <Leader>p "*p
nmap <Leader>P "*P
vmap <Leader>p "*p
vmap <Leader>P "*P
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
noremap <leader>h :bp<CR>
noremap <leader>l :bn<CR>
noremap <leader>k :ls<CR>
noremap <leader>j :b<CR>



"Classics-------------------------------------------------------------------
set clipboard+=unnamedplus
syntax enable
set autowriteall
syntax on 
filetype indent on
filetype plugin on
filetype on
set expandtab       " insert spaces when hitting TABs
set nocompatible
set colorcolumn=80  " highlights text after column [85]
set autoindent      " align the new line indent with the previous line
set hlsearch        " highlight search results
set cursorline      " highlights current cursor line...
set ttyfast         " big baller, quick scroller
set ruler           " show line, word, etc in status bar
set wrap            " wraps words
"set nowrap
set linebreak
set relativenumber  " display lines in distance relative to current line
:nmap j gj
:nmap k gk
" movement assistance
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list            " shows whitespace characters
set number
:au WinEnter * :setlocal number
:au WinLeave * :setlocal nonumber
"Always show line numbers, but only in current window.
cnoremap sudow w !sudo tee % >/dev/null


"A Little Extra------------------------------------------------------------
"set encoding=utf-8  " allows utf-8 characters
"set textwidth=79    " lines longer than 79 columns will be broken
set showmode        " shows current mode
set scrolloff=3     " scrolls when cursor is [3] lines from screen end
set showcmd         " show what command is occuring in the bar
set hidden          " saves hidden copy of unsaved files on exit
set wildmenu        " command line auto-completion?
set wildmode=list:longest " complimentary with above
set visualbell      " baby got beep
au FocusLost * :wa  " save file when alt-tabbing

"nnoremap <silent> <F5> :update<Bar>silent !start "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" 
""file://%:p"<CR>
nnoremap <C-w>f :exe ':silent !firefox %'<CR>
"set guifont=Consolas:h10:cANSI
 "map <c-f> :call JsBeautify()<cr>
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
vmap <silent> <expr> p <sid>Repl()

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

let g:neomake_list_height = 2
let g:neomake_open_list = 2
let g:neomake_verbose = 3
let g:neomake_javascript_eslint_exe = './node_modules/.bin/eslint_d'
let g:neomake_javascript_enabled_makers = ['eslint']
autocmd! BufWritePost *.js silent! Neomake

