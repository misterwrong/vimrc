" Dit is mijn persoonlijke .vimrc. Het is zwaar gebaseerd op https://github.com/changemewtf/no_plugins
"  
" https://github.com/misterwrong/vimrc

set nocompatible
colorscheme desert
let mapleader=","
set mouse=""
syntax enable
filetype plugin on

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

" 2. Programmeren en indentatie

syntax on
set number
set nowrap
set clipboard=unnamed
set sidescrolloff=10

set expandtab
set textwidth=120
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set foldcolumn=4

autocmd BufRead,BufNewFile *.txt,*.ini,*.sh,*.yml,*.json,*.html set shiftwidth=2|set autoindent
autocmd BufRead,BufNewFile *.js,*.java,*.groovy,*.c,*.h set shiftwidth=4|set cindent

autocmd BufRead,BufNewFile *java set makeprg=mvn\ clean\ install

" 3. Bestandsbeheer

let g:netrw_banner=0        " irritante banner uit
let g:netrw_browse_split=4  " open in eerdere venster
let g:netrw_altv=1          " open splitst naar rechts 
let g:netrw_liststyle=3     " boom
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" - :edit om een map te openen in bestandsbeheer
" - <CR>/v/t om te openen in een h-split/v-split/tab
" - check |netrw-browse-maps| voor meer mappings

" Doorzoek mappen recursief. Zorgt voor tab-completering van alle bestandsgerelateerde taken:
set path+=**
" Toon alle matchende bestanden bij tab-completering:
set wildmenu

" 4. Tags

command! MakeTags !ctags -R --exclude=*.class .
nnoremap <Leader><C-]> <C-w><C-]><C-w>T

" - ^]   spring naar tag onder de cursor
" - ,^]  spring naar tag onder de cursor in een nieuwe tab
" - g^]  voor ambigue tags
" - ^t   om terug op de tag stack te springen
