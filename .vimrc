set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable " Enable syntax highlight.

let mapleader = ',' "Remap leader to comma.
set number "Show line numbers.

colorscheme jellybeans
set t_Co=256 "Use 256 colors in terminal.

set guioptions-=T "Remove toolbar.

set hlsearch
set incsearch

"Change default directory for swap files
set directory=$HOME/.vim/swapfiles//

"Git gutter delay time
set updatetime=250

let g:airline_powerline_fonts=1

"Ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_working_path_mode = 'ra'

"Reset search results highlighting
nmap <Leader><space> :nohlsearch<cr>

"Nerd tree toggle
map <Leader><Leader> :NERDTreeToggle<CR>

nmap <c-R> :CtrlPBufTag<cr>
