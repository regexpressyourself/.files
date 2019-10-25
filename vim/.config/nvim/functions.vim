
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
