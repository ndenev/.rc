set softtabstop=4 shiftwidth=4 expandtab
set mouse=a
set bg=dark
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'jeetsukumaran/vim-buffergator'
"Plugin 'sickill/vim-monokai'
Plugin 'Valloric/YouCompleteMe'
Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'cespare/vim-toml'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()

set laststatus=2
set number
syntax on
set t_Co=256

filetype plugin indent on
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

autocmd VimEnter * NERDTree
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

