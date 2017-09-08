" noremap <silent> <C-m> :!node "%"<CR>
autocmd BufWrite *.js :call DeleteTrailingWS()

" Run prettier JS formatting tool
nnoremap <leader>p :silent %!prettier --stdin<CR>
setlocal omnifunc=javascriptcomplete#CompleteJS
