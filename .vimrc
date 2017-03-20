"------------------Plugins-----------------"
source $HOME/.vim/plug.vim
source $HOME/.vim/plugins.vim

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
"Let's activate relative line numbers.
set relativenumber
"But show the current line number.
set number

"-----------------Search-----------------"
"Highlight search result(s).
set hlsearch
"Search incrementally.
set incsearch
"Ignore case.
set ignorecase

"------------Split Management------------"
"I prefer to open new splits below and to the right.
set splitbelow
set splitright
"I don't want to have to press <C-W> to move between splits.
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>

"--------------Indentation---------------"
filetype plugin indent on

"----------------Mappings----------------"
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
"Clear the highlighted search.
nmap <Leader><space> :nohlsearch<cr>
"Sort lines by length
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>sl ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

"--------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

