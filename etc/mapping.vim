" If you have something highlighted and type a, 
" it replaces the text, like other editors. 
" If you type (, however, it wraps the selected 
" text in parentheses. This is enormously useful.
vnoremap (  <ESC>`>a)<ESC>`<i(<ESC>
vnoremap )  <ESC>`>a)<ESC>`<i(<ESC>
vnoremap {  <ESC>`>a}<ESC>`<i{<ESC>
vnoremap }  <ESC>`>a}<ESC>`<i{<ESC>
"vnoremap "  <ESC>`>a"<ESC>`<i"<ESC>
vnoremap '  <ESC>`>a'<ESC>`<i'<ESC>
vnoremap `  <ESC>`>a`<ESC>`<i`<ESC>
vnoremap [  <ESC>`>a]<ESC>`<i[<ESC>
vnoremap ]  <ESC>`>a]<ESC>`<i[<ESC>

" change tab with Alt + arrow
" map ¬ :tabnext<cr>
" map ˙ :tabprev<cr>

" Empty line before
nmap [<Space> O<Esc>j
" Empty line after
nmap ]<Space> o<Esc>k

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" nmap <leader><tab> :set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<<cr>:set list<cr>
" Close the current buffer
map <leader>bd :Bclose<cr>

set pastetoggle=<F2>
nnoremap ; :
noremap <tab> <Esc>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>
" list buffers
map <leader>b :ls<cr>

" easy vimrc editing
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
map <leader>j :vimgrep // **/*.js<left><left><left><left><left><left><left><left><left>

" Open vimgrep and put the cursor in the right position
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" Vimgreps in the current file
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Toggle highlight of search
noremap <F4> :set hlsearch! hlsearch?<CR>

" noremap <silent> <C-e> :call PlaySound()<CR>
