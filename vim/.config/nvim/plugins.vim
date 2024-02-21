"Plugins-------------------------------------------------------------------
"
call plug#begin()
"" post install (yarn install | npm install) then load plugin only for editing supported files
"Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'ngmy/vim-rubocop'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
 "Tools
 "


Plug 'amadeus/vim-convert-color-to'

Plug 'vim-autoformat/vim-autoformat'
Plug 'ap/vim-css-color'
Plug 'amadeus/vim-convert-color-to'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'matze/vim-move'
Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" AutoComplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'ruanyl/vim-fixmyjs'
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}
Plug 'wellle/tmux-complete.vim'

" Helpers
Plug 'yuttie/comfortable-motion.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'alvan/vim-closetag'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'

" Syntax
Plug 'pangloss/vim-javascript'
Plug 'pantharshit00/vim-prisma'
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'ntpeters/vim-better-whitespace'

" Visual
Plug 'flazz/vim-colorschemes'
call plug#end()

" For conceal markers.
if has('conceal')
  set conceallevel=0 concealcursor=niv
endif

let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
let g:move_key_modifier = 'C'

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect


set rtp+=/opt/homebrew/opt/fzf

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
