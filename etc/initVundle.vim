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
Bundle "marijnh/tern_for_vim"

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
" distraction-free writing mode
Bundle "junegunn/goyo.vim"
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




" =============================================================
" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on