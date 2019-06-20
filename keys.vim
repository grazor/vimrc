" SPC as leader
let mapleader = " "

" Clear search
nnoremap <silent> <leader>/ :nohlsearch<cr>

" Config tinkering
nnoremap <leader>ce :edit $MYVIMRC<cr>
nnoremap <leader>cs :source $MYVIMRC<cr>

" JK for normal only
inoremap jk <esc>
inoremap <esc> <nop>

" Switching windows
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

" Open file in current dir
nnoremap <leader>e :e <c-r>=expand('%:p:h')<cr>/
nnoremap <leader>o :Files <c-r>=expand('%:h')<cr><cr>
nnoremap <leader>f :GFiles<cr>
nnoremap <leader>s :Rg 
vnoremap <leader>s y:Rg <c-r>"<cr> 

" Buffers, windows
nnoremap <leader>b :Buffers<cr>
nnoremap <f2> :Buffers<cr>

" Coc specific
nnoremap <leader>i :ImportName<cr>
nnoremap gd :call CocActionAsync('jumpDefinition')<cr>
nnoremap gu :call CocActionAsync('jumpReferences')<cr>
nnoremap gh :call CocActionAsync('doHover')<cr>

" Motion
nmap f <Plug>(easymotion-s2)

" Flash on yank
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$
let g:operator#flashy#flash_time = 150
