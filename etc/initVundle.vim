set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'L9'
Plugin 'corntrace/bufexplorer'
Plugin 'tpope/vim-fugitive'

Plugin 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

Plugin 'TaskList.vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"

" == Syntastic config
Bundle "scrooloose/syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_enable_signs = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "X"
let g:syntastic_style_error_symbol = ">"
let g:syntastic_warning_symbol = "!"
let g:syntastic_style_warning_symbol = ">"
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

Bundle "kien/ctrlp.vim"
let g:ctrlp_mruf_max = 250
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
" Bundle 'Shutnik/jshint2.vim'
" Lint JavaScript files after reading it
" let jshint2_read = 1
" Lint JavaScript files after saving it
" let jshint2_save = 1

Bundle "tpope/vim-surround"
Bundle "majutsushi/tagbar"

" PHP debugging with XDebug
Bundle 'joonty/vdebug.git'
let g:vdebug_options= {
\    "port" : 9001,
\    "server" : 'localhost',
\    "timeout" : 20,
\    "on_close" : 'detach',
\    "break_on_open" : 1,
\    "ide_key" : 'vim',
\    "path_maps" : {},
\    "debug_window_level" : 0,
\    "debug_file_level" : 0,
\    "debug_file" : "",
\    "watch_window_style" : 'expanded',
\    "marker_default" : '⬦',
\    "marker_closed_tree" : '▸',
\    "marker_open_tree" : '▾'
\}

Bundle "tComment"
nnoremap <leader>/ :TComment<CR>
vnoremap <leader>/ :TComment<CR>
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>


""""""" NEW BUNDLES

" creates directories on the path to created file
Bundle 'duggiefresh/vim-easydir'
" Markers display in gutter
Bundle "kshenoy/vim-signature"

" Javascript syntax and indentation
Bundle "pangloss/vim-javascript"
" Enables HTML/CSS syntax highlighting in your JavaScript file.
let g:javascript_enable_domhtmlcss=1

" colorscheme iceberg
Bundle "cocopon/iceberg.vim"

" Debugger for nodejs
Bundle "sidorares/node-vim-debugger"

Bundle "ervandew/supertab"
Bundle "chikamichi/mediawiki.vim"

" Bundle "spf13/PIV"
" Bundle "Shougo/neocomplcache.vim"

" "Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" " Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" " Use neocomplcache.
" let g:neocomplcache_enable_at_startup = 1
" " Use smartcase.
" let g:neocomplcache_enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplcache_min_syntax_length = 3
" let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"
" " Enable heavy features.
" " Use camel case completion.
" "let g:neocomplcache_enable_camel_case_completion = 1
" " Use underbar completion.
" "let g:neocomplcache_enable_underbar_completion = 1
"
" " Define dictionary.
" " let g:neocomplcache_dictionary_filetype_lists = {
" "     \ 'default' : '',
" "     \ 'vimshell' : $HOME.'/.vimshell_hist',
" "     \ 'scheme' : $HOME.'/.gosh_completions'
" "         \ }
"
" " Define keyword.
" if !exists('g:neocomplcache_keyword_patterns')
"     let g:neocomplcache_keyword_patterns = {}
" endif
" let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
"
" " Plugin key-mappings.
" inoremap <expr><C-g>     neocomplcache#undo_completion()
" inoremap <expr><C-l>     neocomplcache#complete_common_string()
"
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"   return neocomplcache#smart_close_popup() . "\<CR>"
"   " For no inserting <CR> key.
"   "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplcache#close_popup()
" inoremap <expr><C-e>  neocomplcache#cancel_popup()
"
" " Close popup by <Space>.
" "inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
"
" " For cursor moving in insert mode(Not recommended)
" "inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
" "inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
" "inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
" "inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" " Or set this.
" "let g:neocomplcache_enable_cursor_hold_i = 1
" " Or set this.
" "let g:neocomplcache_enable_insert_char_pre = 1
"
" " AutoComplPop like behavior.
" "let g:neocomplcache_enable_auto_select = 1
"
" " Shell like behavior(not recommended).
" "set completeopt+=longest
" "let g:neocomplcache_enable_auto_select = 1
" "let g:neocomplcache_disable_auto_complete = 1
" "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
" " Enable heavy omni completion.
" if !exists('g:neocomplcache_force_omni_patterns')
"   let g:neocomplcache_force_omni_patterns = {}
" endif
" let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"
" =============================================================
" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
