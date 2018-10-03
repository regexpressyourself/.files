"Plugins-------------------------------------------------------------------
call plug#begin()
"Plug 'skywind3000/vim-keysound'
"Plug 'pangloss'

" Tools
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Auto Complete
Plug 'roxma/nvim-completion-manager'
Plug 'epilande/vim-react-snippets'
Plug 'scrooloose/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'maksimr/vim-jsbeautify'
Plug 'Chiel92/vim-autoformat'

" Helpers
Plug 'yuttie/comfortable-motion.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'

" Syntax
Plug 'leafgarland/typescript-vim'
Plug 'w0rp/ale'
Plug 'epilande/vim-react-snippets'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'gabrielelana/vim-markdown'
Plug 'junegunn/vim-easy-align'

" Visual
Plug 'mhinz/vim-startify'
Plug 'mhartington/oceanic-next'
Plug 'gcmt/taboo.vim'
Plug 'itchyny/lightline.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
call plug#end()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:ale_fixers = {
\   'typescript': ['tslint'],
\}

let g:jsx_ext_required = 0
"let g:keysound_enable = 1
