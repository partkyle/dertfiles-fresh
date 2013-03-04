filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" update vundle
Bundle 'gmarik/vundle'

" Misc.
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'

" tmux
Bundle 'benmills/vimux'

" Visual
Bundle 'Lokaltog/vim-powerline'

" Editing
Bundle 'tpope/vim-surround'
Bundle 'ervandew/supertab'

" Navigation
Bundle 'mileszs/ack.vim'

" FuzzyFinder
Bundle 'L9'
Bundle 'FuzzyFinder'

" Colours
Bundle 'altercation/vim-colors-solarized'
Bundle 'nanotech/jellybeans.vim'
Bundle 'chriskempson/vim-tomorrow-theme'

" golang
Bundle 'jnwhiteh/vim-golang'
