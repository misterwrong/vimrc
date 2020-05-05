" Basisinstellingen

set nocompatible
colorscheme desert
let mapleader=","
set mouse=""
syntax enable
filetype plugin on
cabbrev h vert bot h

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

" Terminal in venster onderaan van 8 regels hoog
noremap <Leader>t :bo ter<CR><C-W>8<C-_>
