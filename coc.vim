" Global plugins settings
let g:coc_global_extensions = ['coc-python', 'coc-git', 'coc-ultisnips', 'coc-json']

" Clear and set virtual texts between line_start and line_end (exclusive).
function! s:set_virtual_texts(buf_id, ns_id, line_start, line_end, virtual_texts) abort
    " VirtualText: map with keys line, text and hl_group.

    if !exists('*nvim_buf_set_virtual_text')
        return
    endif

    call nvim_buf_clear_namespace(a:buf_id, a:ns_id, a:line_start, a:line_end)

    for vt in a:virtual_texts
        let l:available_space = winwidth('%') - strwidth(getline(vt['line']+1)) - 8
        let l:text = vt['text']
        if strwidth(l:text) < l:available_space
            let l:text = repeat(" ", l:available_space - strwidth(l:text)).l:text
        endif
        call nvim_buf_set_virtual_text(a:buf_id, a:ns_id, vt['line'], [[l:text, vt['hl_group']]], {})
    endfor
endfunction
