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

" Tabs
nnoremap <silent> <leader>t :tabnew<cr>
nnoremap <silent> <c-i> :tabnext<cr>

" Open file in current dir
nnoremap <leader>e :e <c-r>=expand('%:p:h')<cr>/
nnoremap <leader>o :Files <c-r>=expand('%:h')<cr><cr>
nnoremap <leader>f :GFiles<cr>
nnoremap <leader>s :Rg 
vnoremap <leader>s y:Rg <c-r>"<cr> 
nnoremap <leader>S :Rg <up><cr>

" Buffers, windows
nnoremap <leader>b <c-^>
nnoremap <f2> :Buffers<cr>
nnoremap <f3> :TagbarToggle<cr>

" :terminal - c-o to visual mode
tmap <c-o> <c-\><c-n> 

" Coc specific
nnoremap <leader>i :ImportName<cr>

" Motion
let g:EasyMotion_do_mapping = 0
nmap <silent> <leader><leader> <Plug>(easymotion-s2)
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Camel case motion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge

" Git
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gb :Gblame<CR>

" Copy/Paste from register
vnoremap <leader>cc "*y
map <leader>vv "*p

" Clipboard
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>Y "+yg_

nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Hard time
let g:hardtime_default_on = 0
let g:hardtime_showmsg = 0
let g:hardtime_maxcount = 2
let g:hardtime_timeout = 1000
let g:list_of_normal_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []
