let g:netrw_banner=0        " irritante banner uit
let g:netrw_browse_split=4  " open in bestaand venster
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
