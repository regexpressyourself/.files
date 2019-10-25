
let mapleader = "\<Space>" "leader to space
"space-w saves
nnoremap <Leader>w :w<CR>
" leader y/p to copy to clipboard
nmap <Leader>h :Goyo<CR>
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
nnoremap H ^
nnoremap L $
:nmap j gj
:nmap k gk
" movement assistance
cnoremap sudow w !sudo tee % >/dev/null
nnoremap <leader>tp :tabprevious<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tt :tabnew<CR>
inoremap <leader>tp <Esc>:tabprevious<CR>i
inoremap <leader>tn <Esc>:tabnext<CR>i
inoremap <leader>tt <Esc>:tabnew<CR>

nnoremap <leader>= gg=Gg;<CR>
nnoremap <leader>y ggyGg;<CR>

vmap <silent> <expr> p <sid>Repl()


nnoremap <Leader>fr :FZF<CR>
nnoremap <Leader>fg :GFiles?<CR>
nnoremap <Leader>fl :Lines<CR>
nnoremap <Leader>/ :BLines<CR>

nnoremap <Leader>rg :Rg<CR>

nnoremap <Leader>: :Commands<CR>

noremap <leader>bp :bp<CR>
noremap <leader>bn :bn<CR>
noremap <leader>bb :Buffers<CR>
noremap <leader>bd :bd<CR>
noremap <leader>ff :e<Space>

noremap <leader>] <C-]>
noremap <leader>[ <C-t>
noremap <leader>. :TagbarToggle<CR>

noremap <leader>h :set ft=html<CR>
noremap <leader>j :set ft=javascript.jsx<CR>

autocmd FileType css set keywordprg=~/scripts/cssman
autocmd FileType js set keywordprg=~/scripts/jsman
autocmd FileType jsx set keywordprg=~/scripts/jsman
autocmd FileType mjml set keywordprg=~/scripts/mjmlman

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)



" Usage:
"   fzf#wrap([name string,] [opts dict,] [fullscreen boolean])

" This command now supports CTRL-T, CTRL-V, and CTRL-X key bindings
" and opens fzf according to g:fzf_layout setting.
command! Buffers call fzf#run(fzf#wrap(
    \ {'source': map(range(1, bufnr('$')), 'bufname(v:val)')}))

" This extends the above example to open fzf in fullscreen
" when the command is run with ! suffix (Buffers!)
command! -bang Buffers call fzf#run(fzf#wrap(
    \ {'source': map(range(1, bufnr('$')), 'bufname(v:val)')}, <bang>0))

"
set grepprg=rg\ --vimgrep
command! -bang -nargs=* Find call fzf#vim#grep('rg -lr --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" "node_modules" --color "always" '.shellescape(<q-args>), 1, <bang>0)

set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


"autocmd FileType javascript nnoremap <leader>bf :%!js-beautify -f -<CR>
"autocmd FileType css nnoremap <leader>bf :%!js-beautify --type css -f -<CR>
"autocmd FileType scss nnoremap <leader>bf :%!js-beautify --type css -f -<CR>
"autocmd FileType html nnoremap <leader>bf :%!js-beautify --type html -f -<CR>
".vimrc
map <leader>bf :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <leader>bf :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <leader>bf :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <leader>bf :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <leader>bf :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <leader>bf :call CSSBeautify()<cr>
autocmd FileType scss noremap <buffer> <leader>bf :call CSSBeautify()<cr>


cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
nnoremap <Leader>al :Ack! -l<Space>

nnoremap <Leader>bc V:!bc -l<cr>
