let g:netrw_banner=0        " turn off annoying banner
let g:netrw_browse_split=4  " open in existing window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" - :edit to open a folder in file management
" - <CR>/v/t to open in a h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

" Recursively search folders. Provides tab completion for alle file related tasks:
set path+=**
" Show all matching files during tab completion:
set wildmenu
