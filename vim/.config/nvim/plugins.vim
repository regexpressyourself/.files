"Plugins-------------------------------------------------------------------
call plug#begin()
Plug 'https://github.com/scrooloose/syntastic.git'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/terryma/vim-multiple-cursors.git'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/tpope/vim-sensible.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/SirVer/ultisnips.git'
Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'https://github.com/mxw/vim-jsx.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'SirVer/ultisnips'
Plug 'https://github.com/gabrielelana/vim-markdown.git'
Plug 'honza/vim-snippets'
Plug 'https://github.com/mxw/vim-jsx.git'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/sjl/vitality.vim.git'
"Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'iCyMind/NeoSolarized'
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'https://github.com/gcmt/taboo.vim.git'

call plug#end()

let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']
" Use deoplete.
let g:deoplete#enable_at_startup = 1
