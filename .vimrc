" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Plugins
" ==========
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'msanders/snipmate.vim'
Plugin 'tpope/vim-rails'
Plugin 'slim-template/vim-slim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tsaleh/vim-supertab'

" Mappings
" ==========
let mapleader=","
inoremap jk <ESC>

" Quick Edits
map <leader>ev :vsplit $MYVIMRC<cr>
map <leader>sv :source $MYVIMRC<cr>

map <leader>ej :vsplit $HOME/.vim/snippets/javascript.snippets<cr>
map <leader>er :vsplit $HOME/.vim/snippets/ruby.snippets<cr>

" Multi-file Editing
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>gf :vs<cr><C-w>lgf " split version of gf

nnoremap <C-n> :NERDTreeToggle<cr>
let g:NERDTreeWinSize = 50

let g:ctrlp_by_filename = 1
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:10'

autocmd BufWritePost * CtrlPClearCache

set tags=tags,gemtags
map <leader>ta :call RefreshAllTags()<cr> 
map <leader>tp :call RefreshProjectTags()<cr> 
map <leader>tw :call RefreshWorkingDirTags()<cr> 

" Auto Completion
let g:SuperTabCompletionType = 'context'

" Refactoring
map <leader>rn *:%s//

" Rails Utils
map <leader>rr :RV<cr>
map <leader>ra :AV<cr>
noreabbrev Rs Rgenerate scaffold
noreabbrev Rds Rdestroy scaffold
noreabbrev Rc Rgenerate controller
noreabbrev Rdc Rdestroy controller
noreabbrev Rm Rgenerate model
noreabbrev Rdm Rdestroy model

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
set completeopt=longest,menuone

" Tabs and Indents
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

" My functions
" ==========

function! RefreshAllTags()
	call RefreshGemTags()
	call RefreshWorkingDirTags()
	echomsg 'All tags refreshed!'
endfunction

function! RefreshGemTags()
	let cmd = 'bundle show --paths | xargs ctags --language-force=ruby -R -f gemtags'
	let res = system(cmd)
	echomsg 'Gem tags refreshed!'
endfunction

function! RefreshWorkingDirTags()
	let cmd = 'ctags -R .'
	let res = system(cmd)
	echomsg 'Working dir tags refreshed!'
endfunction
