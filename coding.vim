set encoding=utf-8

autocmd BufNewFile,BufRead *.py
	\ set tabstop=4 softtabstop=4 shiftwidth=4 |
	\ set textwidth=0 expandtab autoindent fileformat=unix

autocmd BufWritePre *.py :call CocAction('format')
autocmd BufWritePre *.py :CocCommand python.sortImports

autocmd FileType json syntax match Comment +\/\/.\+$+

augroup overlength
	autocmd!
	autocmd BufRead *.py highlight OverLength ctermbg=red ctermfg=white
	autocmd BufRead *.py match OverLength /\%121v.*/
augroup END

let g:gutentags_ctags_exclude = ['*.js', '*.html', '*.json', '*.md']
