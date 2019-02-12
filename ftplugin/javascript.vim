noremap <silent> <C-m> :!node "%"<CR>
autocmd BufWrite *.js :call DeleteTrailingWS()

" augroup vimrc_special_jsdoc_tags
"     au!
"     au Syntax * syn match SpecTags /\v<(bug|BUG|deprecated)/
"           \ containedin=.*Comment,vimCommentTitle
" augroup END
" hi def link SpecTags ErrorMsg

" Run prettier JS formatting tool
" nnoremap <leader>p :silent %!prettier --stdin --single-quote --no-semi --trailing-comma=es5 --print-width=100 <CR>
setlocal omnifunc=javascriptcomplete#CompleteJS
