noremap <silent> <C-m> :!node %<CR>

autocmd BufWrite *.js :call DeleteTrailingWS()

