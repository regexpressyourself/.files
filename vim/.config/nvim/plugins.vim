"Plugins-------------------------------------------------------------------
call plug#begin()
"Plug 'skywind3000/vim-keysound'
"Plug 'pangloss'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install' }
" Tools
Plug 'ap/vim-css-color'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'scrooloose/nerdcommenter'
Plug 'zeekay/vim-beautify'
Plug 'mattn/sonictemplate-vim'
Plug 'vimwiki/vimwiki'
Plug 'maksimr/vim-jsbeautify'
Plug 'mileszs/ack.vim'
Plug 'matze/vim-move'
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" AutoComplete
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neosnippet.vim'
Plug 'fgrsnau/ncm2-aspell'
Plug 'fgrsnau/ncm2-otherbuf'
Plug 'filipekiss/ncm2-look.vim'
Plug 'loonies/ncm2-ledger'
Plug 'mhartington/nvim-typescript'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-cssomni'
Plug 'ncm2/ncm2-github'
Plug 'ncm2/ncm2-gtags'
Plug 'ncm2/ncm2-html-subscope'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-markdown-subscope'
Plug 'ncm2/ncm2-neoinclude'
Plug 'ncm2/ncm2-neosnippet'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-syntax'
Plug 'ncm2/ncm2-tagprefix'
Plug 'ncm2/ncm2-tern'
Plug 'ncm2/ncm2-tmux'
Plug 'roxma/nvim-yarp'
Plug 'wellle/tmux-complete.vim'
Plug 'yuki-ycino/ncm2-dictionary'

" Helpers
Plug 'yuttie/comfortable-motion.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'alvan/vim-closetag'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'

" Syntax
Plug 'leafgarland/typescript-vim'
Plug 'posva/vim-vue'
Plug 'mustache/vim-mustache-handlebars'
Plug 'w0rp/ale'
Plug 'epilande/vim-react-snippets'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'gabrielelana/vim-markdown'
Plug 'junegunn/vim-easy-align'
Plug 'amadeus/vim-mjml'
Plug 'ntpeters/vim-better-whitespace'

" Visual
Plug 'mhartington/oceanic-next'
Plug 'gcmt/taboo.vim'
Plug 'itchyny/lightline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
call plug#end()

" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'typescript': ['tslint'],
\   'javascript': ['prettier', 'eslint'],
\   'css': ['prettier']
\}

let g:jsx_ext_required = 0
let g:ale_echo_msg_format = '%linter%: %s'


" For conceal markers.
if has('conceal')
  set conceallevel=0 concealcursor=niv
endif

let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
let g:move_key_modifier = 'C'

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

augroup NCM2
  autocmd!
  " enable ncm2 for all buffers
  autocmd BufEnter * call ncm2#enable_for_buffer()
  " :help Ncm2PopupOpen for more information
  set completeopt=noinsert,menuone,noselect
  " When the <Enter> key is pressed while the popup menu is visible, it only
  " hides the menu. Use this mapping to close the menu and also start a new line.
  "inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
augroup END
