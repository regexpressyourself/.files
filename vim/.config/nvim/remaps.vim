
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

vmap <silent> <expr> p <sid>Repl()


nnoremap <Leader>fr :FZF<CR>
nnoremap <Leader>fg :GFiles?<CR>
nnoremap <Leader>fl :Lines<CR>
nnoremap <Leader>Fl :BLines<CR>
noremap <leader>bp :bp<CR>
noremap <leader>bn :bn<CR>
noremap <leader>bb :Buffers<CR>
noremap <leader>bd :bd<CR>
noremap <leader>ff :e<Space>

noremap <leader>] <C-]>
noremap <leader>[ <C-t>
noremap <leader>. :TagbarToggle<CR>
