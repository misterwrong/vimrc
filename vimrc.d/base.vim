set nocompatible
colorscheme desert
let mapleader=","
set mouse=""
syntax enable
filetype plugin on
cabbrev h vert bot h
set nojoinspaces
set nowrapscan

set number
set relativenumber

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

:imap Tab <C-N>
set backspace=indent,eol,start

" Terminal below, 8 lines high
noremap <Leader>t :bo ter<CR><C-W>8<C-_>
