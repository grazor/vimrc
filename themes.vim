" Theme stuff
" Dynamically switch color scheme and have things respect it

set termguicolors

function! SwitchColorScheme(name)
  let g:VIM_COLOR_SCHEME = a:name
  call ColorScheme()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

function! ColorScheme()
  if g:VIM_COLOR_SCHEME ==# 'palenight'
    let g:palenight_terminal_italics=1
    colorscheme palenight
    let g:lightline.colorscheme = 'palenight_alter'
  endif

  if g:VIM_COLOR_SCHEME ==# 'night-owl'
    colorscheme night-owl
    let g:lightline.colorscheme = 'challenger_deep'
    hi SignColumn guifg=NONE ctermfg=NONE guibg=#011627 ctermbg=236 gui=NONE cterm=NONE
    highlight clear ALEErrorSign
    highlight ALEWarningSign guifg=yellow
    highlight ALEVirtualTextWarning guifg=yellow
    hi CtrlPMatch guibg=cyan guifg=black
    hi CtrlPMode1 guibg=cyan guifg=black
  endif

  if g:VIM_COLOR_SCHEME ==# 'challenger_deep'
    colorscheme challenger_deep
    let g:lightline.colorscheme = 'challenger_deep'
    hi PMenu guibg=#100e23
    highlight clear ALEErrorSign
    highlight ALEWarningSign guifg=yellow
    highlight ALEVirtualTextWarning guifg=yellow
    hi Search guibg=#ffb378 guifg=black
    hi CtrlPMatch guibg=cyan guifg=black
    hi CtrlPMode1 guibg=cyan guifg=black
    hi LineNr guibg=#1e1c31
    " Fix challengers horrible git diffs
    hi DiffAdd guibg=#62d196 guifg=black
    hi DiffDelete guibg=#ff5458 guifg=black
    hi DiffChange guibg=#ffb378 guifg=black
    hi DiffText guibg=#ffe9aa guifg=black
  endif
endfunction

" The Defaults
let g:VIM_COLOR_SCHEME = 'night-owl'
:call SwitchColorScheme('night-owl')
