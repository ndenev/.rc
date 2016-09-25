" VIM8 config:
" ./configure \
"   --enable-multibyte \
"   --enable-luainterp=yes \
"   --enable-perlinterp=yes \
"   --enable-pythoninterp=yes \
"   --enable-python3interp=yes \
"   --enable-rubyinterp=yes \
"   --enable-cscope \
"   --with-features=huge \
"   --with-compiledby=ndenev \
"   --with-luajit
"

set softtabstop=4 shiftwidth=4 expandtab
set mouse=a
set bg=dark
set nocompatible

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    silent execute '!mkdir -p ~/.vim/plugged'
    silent execute '!mkdir -p ~/.vim/autoload'
    silent execute '!echo "Downloading Vim-Plug"; curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-git', { 'for': 'git' }
Plug 'Valloric/YouCompleteMe' 
Plug 'racer-rust/vim-racer', { 'for': 'rust' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'tomasr/molokai'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'cespare/vim-toml', { 'for': 'toml' }
Plug 'godlygeek/tabular'
Plug 'tpope/vim-unimpaired'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'vimwiki/vimwiki'
" Make % match xml tags
Plug 'edsono/vim-matchit', { 'for': ['html', 'xml'] }
filetype plugin indent on                   " required!
call plug#end()

set laststatus=2
set number
syntax on
set t_Co=256

colorscheme molokai
let g:airline_powerline_fonts = 1
let g:rehash256 = 1
let g:molokai_original = 1


"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" NerdTree

"autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <C-t> :NERDTreeToggle<CR>
""Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>

" bufferswitch
nnoremap <silent> <Tab> :bnext<CR>
nnoremap <silent> <S-Tab> :bprevious<CR>

" Racer
set hidden
let g:racer_cmd = "/usr/local/bin/racer"
let $RUST_SRC_PATH="/Users/ndenev/Documents/rust-source/rust-stable/src"

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'

