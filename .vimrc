" create folder .vim/bundle
" git clone bundle and YouCompleteMe inside bundle
" go inside YouCompleteMe and run python install.py
" install golang
" install go and set path in .profile
" open vi and run PluginInstall
" run GoInstallBinaries
 
"let g:virtualenv_directory = '~/'
"let g:ycm_path_to_python_interpreter="/bin/python"

"Update for ycm in case of deprecation warning
"Update file youcompleteme.vim
"silent! exec s:python_until_eof
"from __future__ import unicode_literals
"from __future__ import print_function
"from __future__ import division

set nocompatible
set runtimepath^=~/.vim/bundle/ctrlp.vim

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nmap <silent> <C-D> :NERDTreeToggle<CR>
imap <silent> <C-D> :NERDTreeToggle<CR>

nnoremap <leader>a :cclose<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Plugin 'davidhalter/jedi-vim'
"Plugin 'plytophogy/vim-virtualenv'
Plugin 'gmarik/Vundle.vim'
Plugin 'derekwyatt/vim-scala'
Bundle 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
"Plugin 'elixir-lang/vim-elixir'
Plugin 'leafgarland/typescript-vim'
Plugin 'Yggdroot/indentLine'
Plugin 'flazz/vim-colorschemes'
call vundle#end()

"set rtp+=$GOROOT/misc/vim
syntax on
filetype plugin on
filetype plugin indent on
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'

let g:virtualenv_directory = '~/'
let g:virtualenv_stl_format = '[%n]'
"set statusline+=%{virtualenv#statusline()}
"set statusline^=%{virtualenv#statusline()}

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_add_preview_to_completeopt=1
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:indentLine_char = '|'

source ~/.vim/bundle/vim-go/autoload/go/complete.vim
setlocal omnifunc=go#complete#Complete
set omnifunc=syntaxcomplete#Complete

set wrap linebreak nolist
set tabstop=4             " number of spaces that a <tab> represents in a file
set shiftwidth=4          " number of spaces to use for (auto)indent
set expandtab             " expand tabs to spaces
set softtabstop=4         " number of spaces that a <tab> represents
set smarttab              " smart handling of tabs when inserting or deleting

let g:Powerline_symbols = 'fancy'
"set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set background=dark
colorscheme PaperColor

set number

"au VimEnter *  NERDTree

set breakindent

"Powerline delay of ESC
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

