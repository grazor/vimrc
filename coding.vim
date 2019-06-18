set encoding=utf-8

autocmd BufNewFile,BufRead *.py
	\ set tabstop=4 softtabstop=4 shiftwidth=4 |
	\ set textwidth=0 expandtab autoindent fileformat=unix

autocmd BufWritePre *.py :call CocAction('format')
autocmd BufWritePre *.py :CocCommand python.sortImports

autocmd FileType json syntax match Comment +\/\/.\+$+

augroup TerminalSettings
	autocmd!
	autocmd TermOpen * setlocal nonumber norelativenumber
	autocmd TermOpen * startinsert
	autocmd BufEnter,BufWinEnter,WinEnter term://* startinsert
	autocmd BufLeave term://* stopinsert
augroup END

let g:gutentags_ctags_exclude = ['*.js', '*.html', '*.json', '*.md']
