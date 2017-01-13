noremap <silent> <C-m> :!node %<CR>

autocmd BufWrite *.js :call DeleteTrailingWS()

set foldmethod=syntax
set dictionary=~/.vim/dict/javascript
