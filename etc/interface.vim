set mouse=a
set scrolloff=7
set mousehide  " Hide mouse after chars typed
set t_Co=256 " number of colors
set background=dark
colorscheme molokai
set wildmenu " Turn on the WiLd menu
set wildignore=*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,*~,*.pyc,.svn,*.png,*.gif,*.jpg,*.zip
set cursorline
set showmode " show mode in status bar (insert/replace/...)
set showcmd " show typed command in status bar
set ruler " show cursor position in status bar
set relativenumber " relative line numbers
set number
set matchtime=2 " show matching bracket for 0.2 seconds
set cmdheight=2 " Height of the command bar
set hidden " A buffer becomes hidden when it is abandoned
set encoding=utf8 " Set utf8 as standard encoding and en_US as the standard language
set noerrorbells " No annoying sound on errors
set visualbell
set t_vb=
set tm=500
set laststatus=2 " Always show the status line
set fillchars-=vert:|
set fillchars+=vert:│
highlight ColorColumn ctermbg=3
highlight ColorColumn ctermbg=black guibg=#592929
highlight MatchParen cterm=bold ctermbg=none ctermfg=magenta
