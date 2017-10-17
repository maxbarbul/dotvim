" noremap <silent> <C-m> :!node "%"<CR>
autocmd BufWrite *.js :call DeleteTrailingWS()

" Run prettier JS formatting tool
nnoremap <leader>p :silent %!prettier --stdin --single-quote --no-semi --trailing-comma=es5 --print-width=100 <CR>
setlocal omnifunc=javascriptcomplete#CompleteJS
