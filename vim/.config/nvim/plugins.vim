"Plugins-------------------------------------------------------------------
call plug#begin()
"Plug 'skywind3000/vim-keysound'
"Plug 'pangloss'
Plug 'ruanyl/vim-fixmyjs'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install' }
" Tools
Plug 'ap/vim-css-color'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}
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

" Auto Complete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'Shougo/neco-syntax'
Plug 'wokalski/autocomplete-flow'
Plug 'zchee/deoplete-jedi'
Plug 'kristijanhusak/deoplete-phpactor'
Plug 'zchee/deoplete-zsh'
Plug 'wellle/tmux-complete.vim'
Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_snipmate_compatibility = 1
Plug 'honza/vim-snippets'
let g:neosnippet#snippets_directory='~/.config/nvim/plugged/vim-snippets/snippets'

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


" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
 "\ pumvisible() ? "\<C-n>" :
 "\ neosnippet#expandable_or_jumpable() ?
 "\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=0 concealcursor=niv
endif

let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 100

" number of spaces per indentation level
" Prettier default: 2

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'false'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'true'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'always'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'all'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
let g:prettier#config#parser = 'flow'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'

" css|strict|ignore
let g:prettier#config#html_whitespace_sensitivity = 'css'
let g:move_key_modifier = 'C'

