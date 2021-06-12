" Window movement shortcuts
" move to the window in the direction shown, or create a new window

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


" console.log with leader-con
nnoremap <leader>con yiwoconsole.log(<Esc>pa)<Esc>yypk0f(a"<Esc>f)i"<Esc>
vnoremap <leader>con yoconsole.log(<Esc>pa)<Esc>yypk0f(a"<Esc>f)i"<Esc>

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

nnoremap <leader>qf /eslint<CR>nnnwi--quiet --fix <Esc>
