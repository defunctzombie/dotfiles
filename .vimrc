set nocompatible

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab

syntax enable
set background=dark

" force the termina to 256 colors
set t_Co=256
colorscheme torte

" mice are for humans
set mouse=a

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode

set noswapfile
set nobackup
set nowb

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
" display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·
highlight SpecialKey ctermbg=red guibg=red

" don't use spaces for makefiles
autocmd FileType make set noexpandtab

"Reload files changed outside vim
set autoread

" don't indent c++ namespaces
set cino=N-s

" use F2 to toggle paste mode
" pastemode doesn't indent pasted code
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

filetype plugin on
filetype indent on

