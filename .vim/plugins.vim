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

" Syntastic JavaScript
" Use standard
let g:syntastic_javascript_checkers = ['standard']

" Use standard to automatically format on save
autocmd bufwritepost *.js silent !standard --fix %
set autoread

" Syntastic PHP
" Use psr-2

let g:syntastic_php_checkers=['php', 'phpcs', 'phpstan']
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'

"/
" ctrlp.vim
"/

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
