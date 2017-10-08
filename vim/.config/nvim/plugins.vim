"Plugins-------------------------------------------------------------------
call plug#begin()


"Plug 'pangloss'
Plug 'MarcWeber/vim-addon-mw-utils'

" Tools
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Auto Complete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'scrooloose/nerdcommenter'
" Helpers
Plug 'https://www.github.com/tpope/vim-sensible'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'

" Syntax
Plug 'w0rp/ale'
"Plug 'pangloss/vim-javascript'
Plug 'gabrielelana/vim-markdown'

" Visual
Plug 'mhartington/oceanic-next'
Plug 'gcmt/taboo.vim'
Plug 'itchyny/lightline.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
call plug#end()

let g:jsx_ext_required = 0
" Use deoplete.
let g:deoplete#enable_at_startup = 1
