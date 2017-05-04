" Automatic .vimrc reload
autocmd! bufwritepost .vimrc source %


set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace
set mouse=a
set bs=2

let mapleader = "\<Space>"

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w
" + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" easier moving between tabs"
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Enable syntax highlighting
filetype off
filetype plugin indent on
syntax on

set number " show line numbers
set tw=79 " document width
set history=700 " history level
set undolevels=700 "undo level

" Theme
syntax enable
set background=dark
set guifont=Droid\ Sans\ Mono\ for\ Powerline:h15
set nocompatible
let g:Powerline_symbols = 'unicode'
set encoding =utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
color badwolf

" Color Column
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Tab with spaces
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set shiftround
set autoindent

" Case insensitive search
set hlsearch "highlight all search patterns
set incsearch
set ignorecase "ignore case
set smartcase

" Disable backup stuff
set nobackup
set nowritebackup
set noswapfile

" Spellcheck
set spell spelllang=en_us
autocmd BufRead,BufNewFile *.md *.wiki setlocal spell
set complete+=kspell

" Setup pathogen for plugins
execute pathogen#infect()

" ============================================================================
"
"
" " Settings for vim-powerline
" " git://github.com/Lokaltog/vim-powerline.git
set laststatus=2
"
"
" " Settings for ctrlp
" " https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" " Python folding
" " mkdir -p ~/.vim/ftplugin
" " wget -O ~/.vim/ftplugin/python_editing.vim
" http://www.vim.org/scripts/download_script.php?src_id=5492
set nofoldenable

"" au VimEnter *  NERDTree
"" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap jk <ESC>

" Vimwiki
let g:vimwiki_list = [{'path': '~/Dropbox/wiki/', 'path_html': '~/Dropbox/wiki/html'}]

