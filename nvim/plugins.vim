call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/vim-plug' " to get documentation

" GUI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-signify'
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/vim-peekaboo'

" VCS
Plug 'tpope/vim-fugitive'

" Deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'deoplete-plugins/deoplete-go'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'eagletmt/neco-ghc'

" Language support/formatting
Plug 'vimwiki/vimwiki'
Plug 'mhartington/nvim-typescript'
Plug 'tpope/vim-markdown'
Plug 'junegunn/vim-easy-align'
Plug 'sirtaj/vim-openscad'
Plug 'rust-lang/rust.vim'

" File browsing
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'francoiscabrol/ranger.vim'

" Keybinds
Plug 'tpope/vim-sensible'

call plug#end()

" Set options
let g:airline_theme='base16'

let net_wiki = {}
let net_wiki.path = '~/notes/net'
let net_wiki.name = 'Net Wiki'
let edu_wiki = {}
let edu_wiki.path = '~/notes/edu'
let edu_wiki.name = 'Edu Wiki'
let org_wiki = {}
let org_wiki.path = '~/notes/org'
let org_wiki.name = 'Org Wiki'
let g:vimwiki_list = [net_wiki, org_wiki]
