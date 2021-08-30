" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-' 
let g:signify_sign_delete_first_line = '|' 
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1


" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk


" cterm - sets the style
" ctermfg - set the text color
" ctermbg - set the highlighting
" DiffAdd - line was added
" DiffDelete - line was removed
" DiffChange - part of the line was changed (highlights the whole line)
" DiffText - the exact part of the line that changed
" Signify

highlight DiffAdd    cterm=bold ctermfg=10  gui=bold guifg=#57ba37 guibg=#1f2511
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=bold guifg=#ef0909 guibg=#1f2511
highlight DiffChange cterm=bold ctermfg=10 ctermbg=16 gui=bold guifg=yellow guibg=#1f2511
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=bold guifg=bg guibg=yellow

highlight SignifySignAdd cterm=bold ctermfg=10  gui=bold guifg=#57ba37 guibg=bg
highlight SignifySignDelete cterm=bold ctermfg=10 ctermbg=17 gui=bold guifg=#ef0909 guibg=bg
highlight SignifySignChange cterm=bold ctermfg=10 ctermbg=16 gui=bold guifg=yellow guibg=bg
highlight SignColumn guibg=#000

