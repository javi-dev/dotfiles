" ----------------------------------------------------------------------------
"   Plug
" ----------------------------------------------------------------------------

" Install vim-plug if we don't already have it
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Specify a directory for plugins
call plug#begin('$HOME/.vim/plugged')

" Make sure you use single quotes
Plug 'gosukiwi/vim-atom-dark'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'vim-syntastic/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'

" Initialize plugin system
call plug#end()
