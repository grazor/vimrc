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

function! ToggleConcealLevel()
    if &conceallevel == 0
        setlocal conceallevel=2
    else
        setlocal conceallevel=0
    endif
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
    highlight SignColumn guifg=NONE ctermfg=NONE guibg=#011627 ctermbg=236 gui=NONE cterm=NONE
    highlight clear ALEErrorSign
    highlight ALEWarningSign guifg=yellow
    highlight ALEVirtualTextWarning guifg=yellow
  endif

  if g:VIM_COLOR_SCHEME ==# 'challenger_deep'
    colorscheme challenger_deep
    let g:lightline.colorscheme = 'challenger_deep'
    highlight PMenu guibg=#100e23
    highlight clear ALEErrorSign
    highlight ALEWarningSign guifg=yellow
    highlight ALEVirtualTextWarning guifg=yellow
    highlight Search guibg=#ffb378 guifg=black
    highlight LineNr guibg=#1e1c31
    " Fix challengers horrible git diffs
    highlight DiffAdd guibg=#62d196 guifg=black
    highlight DiffDelete guibg=#ff5458 guifg=black
    highlight DiffChange guibg=#ffb378 guifg=black
    highlight DiffText guibg=#ffe9aa guifg=black
  endif

  syntax match pyNiceOperator "<=" conceal cchar=≤
  syntax match pyNiceOperator ">=" conceal cchar=≥
  syntax match pyNiceOperator "=\@<!===\@!" conceal cchar=≡
  syntax match pyNiceOperator "!=" conceal cchar=≢

  syntax match pyNiceOperator " \* " conceal cchar=∙
  syntax match pyNiceOperator " / " conceal cchar=÷
  " The following are special cases where it /may/ be okay to ignore PEP8
  syntax match pyNiceOperator "\( \|\)\*\*\( \|\)2\>" conceal cchar=²
  syntax match pyNiceOperator "\( \|\)\*\*\( \|\)3\>" conceal cchar=³
  syntax match pyNiceOperator "\( \|\)\*\*\( \|\)n\>" conceal cchar=ⁿ

  syntax keyword pyNiceStatement lambda conceal cchar=λ
  syntax keyword pyNiceStatement sum conceal cchar=∑

  highlight link pyNiceStatement Keyword

  setlocal conceallevel=1
  setlocal concealcursor=inc
endfunction


" The Defaults
let g:VIM_COLOR_SCHEME = 'night-owl'
call SwitchColorScheme('night-owl')

nnoremap <silent> <C-c><C-y> :call ToggleConcealLevel()<CR>
