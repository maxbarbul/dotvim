" =================================================================
" || Init Vundle plugin manager                                  ||
" =================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" =================================================================


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
" Focus on current file in NERDTree
map <leader>r :NERDTreeFind<cr>
map <leader>n :NERDTreeToggle<cr>

Plugin 'L9'
" Plugin 'corntrace/bufexplorer'
" map <leader>b :BufExplorerVerticalSplit<CR>

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline_powerline_fonts = 1

Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
let g:solarized_termcolors=256

Plugin 'editorconfig/editorconfig-vim'
Bundle 'airblade/vim-gitgutter'

Plugin 'tomasr/molokai'

" Emmet zencoding
Plugin 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
" javascript FileType is for JSX files
autocmd FileType html,css,javascript EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

" Plugin 'vim-ctrlspace/vim-ctrlspace'

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
let g:syntastic_auto_loc_list = 0

let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "X"
let g:syntastic_style_error_symbol = ">"
let g:syntastic_warning_symbol = "!"
let g:syntastic_style_warning_symbol = ">"
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_aggregate_errors = 0
let g:syntastic_filetype_map = { "javascript.jsx": "javascript" }

" if findfile('.eslintrc', '.;') != ''
  let b:syntastic_checkers = ['eslint']
  " conditionally loading `eslint` seems to break so let's always assume we
  " have it locally until we can figure this out.
  let b:syntastic_javascript_eslint_exec = '`npm bin`/eslint'
" else
"   let b:syntastic_checkers = ['standard']

  " Point syntastic checker at locally installed `standard` if it exists.
  " https://github.com/scrooloose/syntastic/issues/1571#issuecomment-146630051
"   if executable('`npm bin`/standard')
"     let b:syntastic_javascript_standard_exec = '`npm bin`/standard'
"   endif
" endif

Bundle "kien/ctrlp.vim"
let g:ctrlp_mruf_max = 250
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_depth = 7

Bundle 'ternjs/tern_for_vim'
Bundle "tpope/vim-surround"
Bundle "majutsushi/tagbar"
" Bundle "marijnh/tern_for_vim"

Bundle "tComment"
nnoremap <leader>/ :TComment<CR>
vnoremap <leader>/ :TComment<CR>
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>


""""""" NEW BUNDLES
" Support for JSX syntax
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" distraction-free writing mode
" Bundle "junegunn/goyo.vim"
" creates directories on the path to created file
" Bundle 'duggiefresh/vim-easydir'
" Markers display in gutter
" Bundle "kshenoy/vim-signature"
" Javascript syntax and indentation
Bundle "pangloss/vim-javascript"
" Enables HTML/CSS syntax highlighting in your JavaScript file.
" let g:javascript_enable_domhtmlcss=1

" colorscheme iceberg
" Bundle "cocopon/iceberg.vim"

" Bundle "ervandew/supertab"
Bundle "chikamichi/mediawiki.vim"
Bundle "Shougo/neocomplete.vim"
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
	    let g:neocomplete#keyword_patterns = {}
endif

let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
	" For no inserting <CR> key.
	"return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" Plugin 'davidhalter/jedi-vim'
" let g:jedi#completions_command = "<C-b>"

Plugin 'chrisbra/csv.vim'

" =====================================================================
" || All of your Plugins must be added before the following line     ||
" =====================================================================
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

