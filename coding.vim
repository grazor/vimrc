" General
set encoding=utf-8
set ignorecase
set smartcase
set incsearch
set wildmenu

" Undo
set noswapfile
set nobackup
set nowritebackup
silent !mkdir ~/.nvim/backups > /dev/null 2>&1
set undodir=~/.nvim/backups
set undofile

" Folds
set foldmethod=indent
set foldlevelstart=99

" Autocmds
augroup Coding
    autocmd!
    " Python
    autocmd BufNewFile,BufRead *.py
	    \ set tabstop=4 softtabstop=4 shiftwidth=4 |
	    \ set textwidth=0 expandtab autoindent fileformat=unix
    " autocmd BufWritePre *.py :call CocAction('format')
    " autocmd BufWritePre *.py :CocCommand python.sortImports

	" Other
    autocmd BufNewFile,BufRead *.js
	    \ set tabstop=2 softtabstop=2 shiftwidth=2 |
	    \ set textwidth=0 expandtab autoindent fileformat=unix
    autocmd FileType json syntax match Comment +\/\/.\+$+
    autocmd FileType vim set tabstop=4 softtabstop=4 shiftwidth=4

	" Go
    autocmd BufNewFile,BufRead *.go
	    \ set tabstop=4 softtabstop=4 shiftwidth=4 |
	    \ set textwidth=0 autoindent fileformat=unix

    " disable paste mode when leaving Insert mode
    autocmd InsertLeave * set nopaste
    " check if buffer was changed outside of vim
    autocmd FocusGained,BufEnter * checktime

	command! -nargs=0 OIMPORTS :call CocAction('runCommand', 'editor.action.organizeImport')
	autocmd BufWritePre *.go :OIMPORTS
augroup END

augroup TerminalSettings
	autocmd!
	autocmd TermOpen * setlocal nonumber norelativenumber
	autocmd TermOpen * startinsert
	autocmd BufEnter,BufWinEnter,WinEnter term://* startinsert
	autocmd BufLeave term://* stopinsert
augroup END

let g:gutentags_ctags_exclude = ['*.js', '*.html', '*.json', '*.md']

" Testing
let test#strategy = 'neovim'
let test#python#runner = 'pytest'

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Gitlab
let g:fugitive_gitlab_domains = [$GITLAB_URL]
let g:gitlab_api_keys = {$GITLAB_URL: $GITLAB_TOKEN}
