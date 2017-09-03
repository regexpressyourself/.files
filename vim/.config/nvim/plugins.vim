"Plugins-------------------------------------------------------------------
call plug#begin()


"Plug 'pangloss/vim-javascript'
Plug 'MarcWeber/vim-addon-mw-utils.git'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips.git'
Plug 'ervandew/supertab.git'
Plug 'gabrielelana/vim-markdown.git'
Plug 'gcmt/taboo.vim.git'
Plug 'honza/vim-snippets'
Plug 'iCyMind/NeoSolarized'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/goyo.vim'
Plug 'majutsushi/tagbar.git'
Plug 'morhetz/gruvbox'
Plug 'mxw/vim-jsx.git'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'sjl/vitality.vim.git'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'terryma/vim-multiple-cursors.git'
Plug 'tpope/vim-commentary.git'
Plug 'tpope/vim-endwise.git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat.git'
Plug 'tpope/vim-sensible.git'
Plug 'tpope/vim-surround.git'
Plug 'tpope/vim-unimpaired.git'
Plug 'w0rp/ale'
call plug#end()

let g:jsx_ext_required = 0
" Use deoplete.
let g:deoplete#enable_at_startup = 1
