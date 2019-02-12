autocmd BufRead,BufNewFile {*.md,*.mkd,*.markdown} set filetype=markdown
autocmd BufRead,BufNewFile {COMMIT_EDITMSG} set filetype=gitcommit
autocmd! BufRead,BufNewFile *.csv,*.dat set filetype=csv
" autocmd! BufRead,BufNewFile *.pl set filetype=prolog
autocmd! BufRead,BufNewFile *.ts set filetype=typescript
autocmd! BufRead,BufNewFile *.tsx set filetype=typescript
autocmd! BufRead,BufNewFile *.log set filetype=log

autocmd FileType typescript :set makeprg=tsc
