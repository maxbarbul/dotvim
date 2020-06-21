" =================================================================
" == VUNDLE HEADER
" =================================================================
filetype off " required

set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required

" =================================================================
" == VUNDLE HEADER END
" =================================================================

Plugin 'L9'
Plugin 'tpope/vim-vinegar' " Netrw file explorer settings
Plugin 'tpope/vim-fugitive' " Git integration
Plugin 'airblade/vim-gitgutter' " Show git changes in gutter for lines
Plugin 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline_powerline_fonts = 1

function! AirLineCustom()
  let g:airline_section_b = airline#section#create(['hunks'])
endfunction
autocmd VimEnter * call AirLineCustom()

" Plugin 'scrooloose/nerdtree'
" let g:NERDTreeShowIgnoredStatus = 1

" Plugin 'Xuyuanp/nerdtree-git-plugin'
" let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : '☒',
"     \ "Unknown"   : "?"
"     \ }
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
let g:solarized_termcolors=256
Plugin 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
Plugin 'tomasr/molokai'
Plugin 'mattn/emmet-vim' " Emmet zencoding
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript EmmetInstall " javascript FileType is for JSX files
let g:user_emmet_leader_key='<C-Z>'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" let g:snipMate.scope_aliases.html = ''

" == Syntastic config
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = 'X'
let g:syntastic_style_error_symbol = '>'
let g:syntastic_warning_symbol = '!'
let g:syntastic_style_warning_symbol = '>'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_aggregate_errors = 0
let g:syntastic_filetype_map = { 'javascript.jsx': 'javascript' }

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

" Plugin 'kien/rainbow_parentheses.vim'
Plugin 'prettier/vim-prettier'
let g:prettier#autoformat = 0 " Disable auto formatting of files that have '@format' tag
let g:prettier#exec_cmd_async = 1 " forced to run async
let g:prettier#quickfix_auto_focus = 0 " disable quickfix focus on errors


Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1
" autocmd VimEnter * RainbowParenthesesToggle
" autocmd Syntax * RainbowParenthesesLoadRound
" autocmd Syntax * RainbowParenthesesLoadSquare
" autocmd Syntax * RainbowParenthesesLoadBraces

Plugin 'kien/ctrlp.vim'
let g:ctrlp_mruf_max = 250
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|coverage|build|doc)$'
let g:ctrlp_max_depth = 7
Plugin 'ternjs/tern_for_vim'
Plugin 'tpope/vim-surround'
Plugin 'tComment'
nnoremap <leader>/ :TComment<CR>
vnoremap <leader>/ :TComment<CR>
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>


""""""" NEW BUNDLES

" Plugin 'jparise/vim-graphql'
" Plugin 'majutsushi/tagbar'
" Plugin 'vim-utils/vim-interruptless'
" Plugin 'bruno-/vim-most-minimal-folds'
" let g:most_minimal_folds_line_count = 1
" Plugin 'vim-utils/vim-man'
Plugin 'moll/vim-node'
" Plugin 'othree/javascript-libraries-syntax.vim' " support of JS libraries API
" let g:used_javascript_libs = 'underscore,react'
Plugin 'tmhedberg/matchit'
" Plugin 'mxw/vim-jsx' " Support for JSX syntax
" let g:jsx_ext_required = 1 " Allow JSX in normal JS files
" Plugin 'leafgarland/typescript-vim'
" let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'

" TypeScript server integration for completion and tags
Plugin 'Quramy/tsuquyomi'
let g:tsuquyomi_single_quote_import	= 1
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_semicolon_import = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.

Plugin 'kshenoy/vim-signature' " Markers display in gutter
Plugin 'pangloss/vim-javascript' " Javascript syntax and indentation
" let g:javascript_enable_domhtmlcss=1 " Enables HTML/CSS syntax highlighting in your JavaScript file.
let g:javascript_conceal_function             = 'ƒ'
let g:javascript_conceal_null                 = 'ø'
let g:javascript_conceal_this                 = '@'
let g:javascript_conceal_return               = '⇚'
let g:javascript_conceal_undefined            = '¿'
let g:javascript_conceal_NaN                  = 'ℕ'
let g:javascript_conceal_prototype            = '¶'
let g:javascript_conceal_static               = '•'
let g:javascript_conceal_super                = 'Ω'
let g:javascript_conceal_arrow_function       = '⇒'
let g:javascript_conceal_noarg_arrow_function = '🞅'
let g:javascript_conceal_underscore_arrow_function = '🞅'

Plugin 'elzr/vim-json'
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'chikamichi/mediawiki.vim'

" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

Plugin 'chrisbra/csv.vim'
Plugin 'chrisbra/Colorizer'

" Русские клавиши не мешают выполнению команд и движениям
" Plugin 'powerman/vim-plugin-ruscmd'

Plugin 'gabrielelana/vim-markdown'
Plugin 'godlygeek/tabular'
Plugin 'mileszs/ack.vim'










" =================================================================
" || VUNDLE FOOTER                                               ||
" =================================================================

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on



" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

