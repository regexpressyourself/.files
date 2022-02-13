
set termguicolors
" set colors for statusline based on mode
" these are based on palenight.vim
function! ModeColors(mode) " {{{
  " Normal mode
  if a:mode == 'n'
    hi fgc guifg=#292d3e guibg=#bd93f9
    hi powerline guifg=#bd93f9
    hi fgc_b guifg=#bd93f9 guibg=#282a36
  " Insert mode
  elseif a:mode == 'i'
    hi fgc guifg=#292d3e guibg=#ff79c6
    hi powerline guifg=#ff79c6
    hi fgc_b guifg=#ff79c6 guibg=#282a36
  " Replace mode
  elseif a:mode == 'R'
    hi fgc guifg=#292d3e guibg=#50fa7b
    hi powerline guifg=#50fa7b
    hi fgc_b guifg=#50fa7b guibg=#282a36
  " Visual mode
  elseif a:mode == 'v' || a:mode == 'V' || a:mode == ""
    hi fgc guifg=#292d3e guibg=#ffb86c
    hi powerline guifg=#ffb86c
    hi fgc_b guifg=#ffb86c guibg=#282a36
  " Command mode
  elseif a:mode == 'c'
    hi fgc guifg=#32343e guibg=#8be9fd
    hi powerline guifg=#8be9fd
    hi fgc_b guifg=#8be9fd guibg=#282a36
  " Terminal mode
  elseif a:mode == 't'
    hi fgc guifg=#32343e guibg=#6272a4
    hi powerline guifg=#6272a4
    hi fgc_b guifg=#6272a4 guibg=#282a36
  endif

  " entering and exiting out of goyo messes with this so I just set it every time
  hi powerline_b guifg=#282a36 guibg=NONE guisp=NONE gui=NONE cterm=NONE

  " Return empty string so as not to display anything in the statusline
  return ''
endfunction

" Return a nice mode name
function! ModeName(mode)
  if a:mode == 'n'
    return 'NORMAL'
  " Insert mode
  elseif a:mode == 'i'
    return 'INSERT'
  " Replace mode
  elseif a:mode == 'R'
    return 'REPLACE'
  " Visual mode
  elseif a:mode == 'v'
    return 'VISUAL'
  elseif a:mode == 'V'
    return "V-LINE"
  elseif a:mode == ""
    return "V-BLOCK"
  " Command mode
  elseif a:mode == 'c'
    return 'COMMAND'
  " Terminal mode
  elseif a:mode == 't'
    return 'TERMINAL'
  endif
endfunction

hi modified_powerline_b guifg=#292d3e guibg=#282a36
hi modified_fgc guifg=#292d3e guibg=#282a36
function! Modified(modified)
  if a:modified == 1
    hi modified_powerline_b guifg=#282a36 guibg=NONE
    hi modified_fgc guifg=#f07178 guibg=#282a36
  else
    hi modified_powerline_b guifg=#292d3e guibg=#292d3e
    hi modified_fgc guifg=#292d3e guibg=#292d3e
  endif
  return '●'
endfunction

function! BufNum()
  return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
endfunction

set noshowmode
set laststatus=2
set statusline=

" Update colors when ya do
set statusline+=%{ModeColors(mode())}

" Mode
set statusline+=%#powerline#%#fgc#%{ModeName(mode())}%#powerline#
set statusline+=\

" Filename
set statusline+=%#powerline_b#%#fgc_b#%.20f%#powerline_b#
set statusline+=\

" Right Side
set statusline+=%=

" Modified
set statusline+=%#modified_powerline_b#%#modified_fgc#%{Modified(&modified)}%#modified_powerline_b#
set statusline+=\

" Number of buffers
set statusline+=%#powerline#>%#fgc#%{BufNum()}%#powerline#
