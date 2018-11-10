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
set nocompatible
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
set shiftwidth=2
set tabstop=2
set expandtab
set softtabstop=2
set shiftround
set autoindent
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,space:·
set showbreak=↪\
set listchars=space:·
highlight WhiteSpaceBol guifg=blue
highlight WhiteSpaceMol guifg=white
match WhiteSpaceMol / /
match WhiteSpaceBol /^ \+/

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

" ===========================================================================
" Plugins
" ===========================================================================

call plug#begin()
" Fuzzy file finder
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" Create non-existent directories when writing buffer
Plug 'pbrisbin/vim-mkdir'
" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Shows list of buffers
Plug 'bling/vim-bufferline'
" Unix shell commands
Plug 'tpope/vim-eunuch'
" Handle surrounds like parenthesis quotes
Plug 'tpope/vim-surround'
" Handle commenting
Plug 'vim-scripts/tComment'
" Golang support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-fugitive' " Git wrapper
Plug 'janko-m/vim-test' " Run tests for different langs
" Ruby and Rails support
Plug 'tpope/vim-endwise' " automatically add 'end'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

call plug#end()

"FZF through Homebrew
set rtp+=/usr/local/opt/fzf
map ; :FZF<CR>

" " Airline Config
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
" " Install powerline fonts from https://github.com/powerline/fonts
" " Set font if using Iterm2
let g:airline_powerline_fonts = 1

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


