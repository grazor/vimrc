call plug#begin('~/.local/share/nvim/plugged')


" Coding general
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
Plug 'ludovicchabant/vim-gutentags'
Plug 'jiangmiao/auto-pairs'

" Testing
Plug 'janko/vim-test'


" Python
Plug 'mgedmin/python-imports.vim'


" Filesystem
Plug 'tpope/vim-eunuch'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


" Editing
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

" Flash on yank
Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'


" VCS
Plug 'tpope/vim-fugitive'


" Modeline
Plug 'itchyny/lightline.vim'
Plug 'itchyny/calendar.vim'
Plug 'sainnhe/artify.vim'
Plug 'macthecadillac/lightline-gitdiff'
Plug 'ryanoasis/vim-devicons'


" Themes
Plug 'challenger-deep-theme/vim', {'name': 'challenger-deep'}
Plug 'haishanh/night-owl.vim'
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()
