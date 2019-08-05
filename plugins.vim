call plug#begin('~/.local/share/nvim/plugged')


" Coding general
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
Plug 'ludovicchabant/vim-gutentags'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'markonm/traces.vim'
Plug 'vimwiki/vimwiki'


" Python
Plug 'mgedmin/python-imports.vim'


" Filesystem
Plug 'tpope/vim-eunuch'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


" Editing
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'yuttie/comfortable-motion.vim'
Plug 'bkad/CamelCaseMotion'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'


" VCS
Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'


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
