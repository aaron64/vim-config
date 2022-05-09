call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sickill/vim-monokai'
call plug#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim

" vim indent settings
let g:indent_guides_enable_on_vim_startup = 1

" save undo trees in files
set undofile
set undodir=~/.vim/undo
set undolevels=1000

set updatetime=100

set laststatus=2
set noshowmode

syntax enable
colorscheme monokai
hi NonText ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE

set number

set encoding=utf-8

set wrap
set tabstop=4
