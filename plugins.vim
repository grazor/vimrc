call plug#begin('~/.local/share/nvim/plugged')


" Coding general
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
Plug 'ludovicchabant/vim-gutentags'


" Python
Plug 'mgedmin/python-imports.vim'


" Filesystem
Plug 'tpope/vim-eunuch'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


" Editing
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'


" VCS


call plug#end()
