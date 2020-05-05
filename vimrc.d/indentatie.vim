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
set breakindent
set fo+=j

filetype indent on
set smartindent

autocmd BufRead,BufNewFile *.txt set wrap|set shiftwidth=2|set sts=2
autocmd BufRead,BufNewFile *.txt,*.ini,*.sh,*.yml,*.json,*.html set shiftwidth=2|set sts=2
autocmd BufRead,BufNewFile *java set makeprg=mvn\ clean\ install

" Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
