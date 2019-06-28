if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
silent! syntax clear pythonOperator

syntax match pythonOperator "\<is\>"

syntax match pyNiceOperator "\<in\>"
syntax match pyNiceOperator "\<or\>"
syntax match pyNiceOperator "\<and\>"
" include the space after “not” – if present – so that “not a” becomes “¬a”.
" also, don't highlightde “not” behighlightnd  ‘¬’ if it is after “is ”.
syntax match pyNiceOperator "\%(is \)\@<!\<not\%( \|\>\)"
syntax match pyNiceOperator "\<not in\>"
syntax match pyNiceOperator "<=" conceal cchar=≤
syntax match pyNiceOperator ">=" conceal cchar=≥
syntax match pyNiceOperator "=\@<!===\@!" conceal cchar=≡
syntax match pyNiceOperator "!=" conceal cchar=≢

syntax keyword pyNiceOperator sum conceal cchar=∑
syntax match pyNiceOperator "\<\%(math\.\)\?sqrt\>" conceal cchar=√
syntax match pyNiceKeyword "\<\%(math\.\)\?pi\>" conceal cchar=π
syntax match pyNiceOperator "\<\%(math\.\|\)ceil\>" conceal cchar=⌈
syntax match pyNiceOperator "\<\%(math\.\|\)floor\>" conceal cchar=⌊

syntax match pyNiceOperator " \* " conceal cchar=∙
syntax match pyNiceOperator " / " conceal cchar=÷
" The following are special cases where it /may/ be okay to ignore PEP8
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)2\>" conceal cchar=²
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)3\>" conceal cchar=³
syntax match pyNiceOperator "\( \|\)\*\*\( \|\)n\>" conceal cchar=ⁿ

syntax keyword pyNiceStatement lambda conceal cchar=λ
syntax keyword pyNiceStatement None conceal cchar=∅

highlight link pyNiceOperator Operator
highlight link pyNiceStatement Statement
highlight link pyNiceKeyword Keyword
highlight link pyNiceBuiltin Builtin
highlight! link Conceal Operator

setlocal conceallevel=1
setlocal concealcursor=inc

function! ToggleConcealLevel()
    if &conceallevel == 0
        setlocal conceallevel=2
    else
        setlocal conceallevel=0
    endif
endfunction

nnoremap <silent> <C-c><C-y> :call ToggleConcealLevel()<CR>
