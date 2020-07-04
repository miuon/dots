call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/vim-plug' " to get documentation

" GUI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-signify'
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/vim-peekaboo'

" Deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'deoplete-plugins/deoplete-go'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'eagletmt/neco-ghc'

" Language support/formatting
Plug 'mhartington/nvim-typescript'
Plug 'tpope/vim-markdown'
Plug 'junegunn/vim-easy-align'
Plug 'sirtaj/vim-openscad'

" File browsing
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'francoiscabrol/ranger.vim'

" Keybinds
Plug 'tpope/vim-sensible'

call plug#end()

" Set options
let g:airline_theme='base16'
