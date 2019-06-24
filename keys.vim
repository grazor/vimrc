" SPC as leader
let mapleader = " "

" ;w
nnoremap ; :

" Clear search
nnoremap <silent> <leader>/ :nohlsearch<cr>

" Config tinkering
nnoremap <leader>ce :edit $MYVIMRC<cr>
nnoremap <leader>cs :source $MYVIMRC<cr>


" JK for normal only
inoremap jk <esc>
inoremap <esc> <nop>

" quickly select text you pasted
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" go up/down onw visual line
map j gj
map k gk

" go to beggining or End of line
nnoremap B ^
nnoremap E $

" Switching windows
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Open file in current dir
nnoremap <leader>e :e <c-r>=expand('%:p:h')<cr>/
nnoremap <leader>o :Files <c-r>=expand('%:h')<cr><cr>
nnoremap <leader>f :GFiles<cr>
nnoremap <leader>s :Rg 
vnoremap <leader>s y:Rg <c-r>"<cr> 

" Buffers, windows
nnoremap <leader>b :Buffers<cr>
nnoremap <f2> :Buffers<cr>
nnoremap <f3> :TagbarToggle<cr>

" :terminal - c-o to visual mode
tmap <c-o> <c-\><c-n> 

" Coc specific
nnoremap <leader>i :ImportName<cr>

" Motion
nmap f <Plug>(easymotion-s2)
