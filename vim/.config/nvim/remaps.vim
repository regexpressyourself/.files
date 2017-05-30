
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
nnoremap H ^
nnoremap L $
noremap <leader>bp :bp<CR>
noremap <leader>bn :bn<CR>
noremap <leader>bb :ls<CR>
noremap <leader>bd :bd<CR>
noremap <leader>ff :e
:nmap j gj
:nmap k gk
" movement assistance
cnoremap sudow w !sudo tee % >/dev/null
nnoremap <F8> :tabn<CR>
nnoremap <F7> :tabp<CR>
vmap <silent> <expr> p <sid>Repl()
