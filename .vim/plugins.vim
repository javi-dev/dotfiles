"/
" Syntastic
"/

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Sytastic JavaScript
" Use standard
let g:syntastic_javascript_checkers = ['standard']

" Use standard to automatically format on save
autocmd bufwritepost *.js silent !standard --fix %
set autoread

"/
" ctrlp.vim
"/

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
