command! MakeTags !ctags -R --exclude=*.class .
nnoremap <Leader><C-]> <C-w><C-]><C-w>T

" - ^]   jump to tag undercursor
" - ,^]  jump to tag under cursor in a new tab
" - g^]  for ambiguous tags
" - ^t   to jump back on the tag stack
