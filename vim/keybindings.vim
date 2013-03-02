nmap <leader>ss :source $HOME/.vimrc<CR>

" Clear search
nmap <C-c> :nohlsearch<CR>

" Ack with <leader>f
map <Leader>f :Ack!<Space>
map <Leader>F :AckFromSearch<CR>

" Use ,d (or ,dd or ,dj or 20,dd) to delete a line without yanking
nmap <silent> <leader>d "_d
vmap <silent> <leader>d "_d

" Yank from the cursor to the end of the line, to be consistent with C and D
nnoremap Y y$

" I never intentionally lookup keywords (with `man`)
nmap K <Esc>

" I don't like <c-r>
map U :redo<CR>

" Search for selected text, forwards or backwards.
" http://vim.wikia.com/wiki/Search_for_visually_selected_text
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" Reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" mappings for command line
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" window / split management
nnoremap <C-h> gT
nnoremap <C-l> gt

nnoremap <C-j> <C-w>w
nnoremap <C-k> <C-w>W

" space mappings
nnoremap <Space> <C-w>w
nnoremap <S-Space> <C-w>W

nnoremap vv :vsplit<CR>
nnoremap ss :split<CR>
nnoremap tt :tabnew<CR>

" sudo write
cnoreabbrev w!! %!sudo tee > /dev/null %

" open file helpers
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" emacsisms (so sue me)
inoremap <C-A> <C-O>^
cnoremap <C-A> <Home>
inoremap <C-E> <End>
cnoremap <C-E> <End>
inoremap <C-F> <C-O>l
cnoremap <C-F> <C-O>l
inoremap <C-B> <C-O>h
cnoremap <C-B> <C-O>h
