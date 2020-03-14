"Wishlist
"The divider between vsplit could look prettier 
"yanking would happen to the clipboard (possible with xclip?)

"1. Plugins
call plug#begin('~/.vim/plugged')
	Plug 'itchyny/lightline.vim'
	Plug 'tpope/vim-fugitive'
	"stuff for working with go
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	"deoplete autocompletion plus a few languages
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'shougo/neoinclude.vim'
	Plug 'zchee/deoplete-jedi'
	Plug 'zchee/deoplete-go', {'build': {'unix': 'make'}}
	Plug 'calviken/vim-gdscript3'
call plug#end()

"set git branch information to lightline and the colorscheme of lightline
let  g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
"Turn on deoplete and turn of the preview window
let g:deoplete#enable_at_startup = 1
set completeopt-=preview

"Side Numbers
set number
set relativenumber
set nowrap
let mapleader = " "
"Smart Window movement
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <C-down> <C-W>j
map <C-up> <C-W>k
map <C-left> <C-W>h
map <C-right> <C-W>l

map <S-j> <C-W>J
map <S-k> <C-W>K
map <S-h> <C-W>H
map <S-l> <C-W>L

map <S-down> <C-W>J
map <S-up> <C-W>K
map <S-left> <C-W>H
map <S-right> <C-W>L

"cursor options
set cursorline
set cursorcolumn
set mouse=a

"search options
set ignorecase
set smartcase
"Search de-highlight
map <Leader>n :noh<cr> 

"Smart window creation
map <Leader>q :vsplit<cr>
map <Leader>w :split<cr>

"window resizing
map <Leader><down> <C-w>10-
map <Leader><up> <C-w>10+
map <Leader><left> <C-w>10<
map <Leader><right> <C-w>10>

"Better tab insertion
map <Tab> >>
map <S-Tab> <<

"Copy/paste settings
map <Leader>p "+p
map <Leader>P "+P
map <Leader>y "+y
map <Leader>p "+p

" Other
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set nowrap
set encoding=utf8
