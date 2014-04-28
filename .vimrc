" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Plugins
" ==========
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Chiel92/vim-autoformat'
Plugin 'msanders/snipmate.vim'
Plugin 'tpope/vim-rails'
Plugin 'slim-template/vim-slim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'

" Mappings
" ==========
let mapleader=","
inoremap jk <ESC>

" Quick Edits
map <leader>ev :vsplit $MYVIMRC<cr>
map <leader>sv :source $MYVIMRC<cr>

map <leader>ej :vsplit $HOME/.vim/snippets/javascript.snippets<cr>
map <leader>er :vsplit $HOME/.vim/snippets/ruby.snippets<cr>

" Auto Completion
iabbrev </ </<C-X><C-O>

" Multi-file Editing
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-n> :NERDTreeToggle<cr>

let g:ctrlp_by_filename = 1
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:10'

" Formatting and Cleanup
nnoremap <leader>af :Autoformat<cr>

" Rails Utils
map <leader>rr :RV<cr>
map <leader>ra :AV<cr>
map <leader>rc :Vcontroller
map <leader>rm :Vmodel
map <leader>rv :Vview

" Backbone Utils
" TODO: explore this

" General Settings
" ==========
syntax on
colorscheme monokai
set nocompatible              " be iMproved, required
set number
set wrap
set backspace=indent,eol,start

" Tabs and Indents
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
