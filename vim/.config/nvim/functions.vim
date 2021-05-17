
" Window movement shortcuts
" move to the window in the direction shown, or create a new window

"map <silent> <Leader><C-h> :call WinMove('h')<cr>
"map <silent> <Leader><C-j> :call WinMove('j')<cr>
"map <silent> <Leader><C-k> :call WinMove('k')<cr>
"map <silent> <Leader><C-l> :call WinMove('l')<cr>


function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction


tnoremap <Esc> <C-\><C-n>


" Console log from insert mode; Puts focus inside parentheses
"imap cl console.log();<Esc>==f(a
" Console log from visual mode on next line, puts visual selection inside parentheses
"vmap cl yocl<Esc>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
"nmap cl yiwocl<Esc>p
nnoremap <leader>con yiwoconsole.log(<Esc>pa)<Esc>yypk0f(a"<Esc>f)i"<Esc>
vnoremap <leader>con yoconsole.log(<Esc>pa)<Esc>yypk0f(a"<Esc>f)i"<Esc>

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

nnoremap <leader>qf /eslint<CR>nnnwi--quiet --fix <Esc>
