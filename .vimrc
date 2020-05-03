" This is my personal .vimrc. It is heavily based on https://github.com/changemewtf/no_plugins
"
" https://github.com/misterwrong/vimrc

set nocompatible
let mapleader = ","

" Zet syntax en plug-ins aan (voor netrw)
syntax enable
filetype plugin on

"  Geen cursortoetsen en zo
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
set backspace=

" Terminal in venster onderaan van 8 regels hoog
noremap <Leader>t :bo ter<CR><C-W>8<C-_>

" Bruikbaarheid
syntax on
set number
set nowrap
set clipboard=unnamed

" Bestandstype-specifieke instellingen
autocmd BufRead,BufNewFile *.txt,*.ini,*.sh,*.yml,*.json,*.html set shiftwidth=2|set autoindent
autocmd BufRead,BufNewFile *.js,*.java,*.groovy,*.c,*.h set shiftwidth=4|set cindent

set foldcolumn=4

" FUZZY ZOEKEN

" Doorzoek mappen recursief. Zorgt voor tab-completering van alle bestandsgerelateerde taken:
set path+=**
" Toon alle matchende bestanden bij tab-completering:
set wildmenu

" TAGS

" Maak een tag-bestand aan (eerst ctags installeren):
command! MakeTags !ctags -R --exclude=*.class .
nnoremap <Leader><C-]> <C-w><C-]><C-w>T

" - ^]   spring naar tag onder de cursor
" - ,^]  spring naar tag onder de cursor in een nieuwe tab
" - g^]  voor ambigue tags
" - ^t   om terug op de tag stack te springen

" BESTANDSBEHEER

let g:netrw_banner=0        " irritante banner uit
let g:netrw_browse_split=4  " open in eerdere venster
let g:netrw_altv=1          " open splitst naar rechts 
let g:netrw_liststyle=3     " boom
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" - :edit om een map te openen in bestandsbeheer
" - <CR>/v/t om te openen in een h-split/v-split/tab
" - check |netrw-browse-maps| voor meer mappings
