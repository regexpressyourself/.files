" Java
nmap <C-x> :!~/scripts/java_compiler.sh<CR>

" Python
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
" ^ make smart indent work properly

"PHP & HTML
au BufNewFile *.php set ft=php.html

