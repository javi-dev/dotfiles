"/
" Syntastic
"/

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic PHP
" Use psr-2

let g:syntastic_php_checkers=['php', 'phpcs', 'phpstan']
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'

"/
" ctrlp.vim
"/

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"/
" vim-php-namespace
"/

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

"/
" UltiSnips
"/
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Workaround for .dotfiles folder
let g:UltiSnipsSnippetDirectories = ['~/.dotfiles/.vim/UltiSnips', 'UltiSnips']

"/
" Prettier
" /
" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.css,*.scss,*.less PrettierAsync
autocmd BufWritePre *.vue :/<script>/+1,/<\/script>/-1 !prettier --stdin
