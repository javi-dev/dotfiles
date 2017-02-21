"------------------Plug-----------------"
source $HOME/.vim/plug.vim

"Enable syntax highlighting.
syntax enable
"Make backspace behave like every other editor.
set backspace=indent,eol,start
"The default is \, but a comma is much better.
let mapleader=','

"-----------------Visuals----------------"
"Terminal Vim uses 256 colors.
set t_Co=256
"Terminal Vim uses the atom-dark 256 color version
colorscheme atom-dark-256
"Let's activate line numbers.
set number

"-----------------Search-----------------"
"Highlight search result(s).
set hlsearch
"Search incrementally.
set incsearch
"Ignore case.
set ignorecase

"----------------Mappings----------------"
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
"Clear the highlighted search.
nmap <Leader><space> :nohlsearch<cr>

"--------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
