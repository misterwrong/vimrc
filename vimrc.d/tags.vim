command! MakeTags !ctags -R --exclude=*.class .
nnoremap <Leader><C-]> <C-w><C-]><C-w>T

" - ^]   spring naar tag onder de cursor
" - ,^]  spring naar tag onder de cursor in een nieuwe tab
" - g^]  voor ambigue tags
" - ^t   om terug op de tag stack te springen
