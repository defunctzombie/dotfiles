" reload vimrc :so %
" % is the current file name (or use ~/.vimrc)
"
" https://github.com/gmarik/vundle

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

Plugin 'altercation/vim-colors-solarized'
" auto indentation detecting
Plugin 'ciaranm/detectindent'
" better js syntax coloring
"Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'

Plugin 'tpope/vim-markdown'
Plugin 'groenewege/vim-less'
Plugin 'elzr/vim-json'
Plugin 'defunctzombie/vim-stylus'
Plugin 'saltstack/salt-vim'
Plugin 'kelan/gyp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'markcornick/vim-vagrant'
Plugin 'chase/vim-ansible-yaml'
Plugin 'kchmck/vim-coffee-script'
Plugin 'wincent/command-t'
Plugin 'nginx.vim'
Plugin 'fatih/vim-go'
Plugin 'mxw/vim-jsx'
"Plugin 'jeaye/color_coded'
Plugin 'hashivim/vim-terraform'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'rdnetto/YCM-Generator'

" put this after loading any bundles
call vundle#end()
filetype plugin indent on     " required!
" done setup for vundle

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab

" configure detectindent when autodetection doesn't work
:let g:detectindent_preferred_expandtab = 1
:let g:detectindent_preferred_indent = 4

syntax enable
set background=dark

" hack for iterm2 colors
let g:solarized_termtrans = 1
colorscheme solarized

" mice are for humans
set mouse=a

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode

" living dangerously
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

" Reload files changed outside vim
set autoread

" use F2 to toggle paste mode
" pastemode doesn't indent pasted code
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" automatically save on loosing focus
autocmd FocusLost silent! wall

" automatically save when switching buffers and/or exiting vim
set autowriteall

" spell checking
set spell spelllang=en_us

" make yank and paste use the system clipboard
set clipboard=unnamed

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable

" detect syntax from start of file
autocmd BufEnter * :syntax sync fromstart

" on file open, set autoindentation
autocmd BufReadPost * :DetectIndent

" turn off stupid json quote conceal bs from elzr/vim-json plugin
let g:vim_json_syntax_conceal = 0

" https://github.com/mxw/vim-jsx
" enable js files to use jsx indentation
let g:jsx_ext_required = 0

map <C-K> :pyf /usr/share/vim/addons/syntax/clang-format-3.6.py<cr>
imap <C-K> <c-o>:pyf /usr/share/vim/addons/syntax/clang-format-3.6.py<cr>

autocmd BufRead,BufNewFile *.launch setfiletype xml
