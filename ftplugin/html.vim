set matchpairs+=<:>
autocmd BufWrite *.html :call DeleteTrailingWS()
autocmd filetype html,xml set listchars-=tab:>.

