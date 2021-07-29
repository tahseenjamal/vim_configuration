" create folder .vim/bundle
" git clone bundle and YouCompleteMe inside bundle
" go inside YouCompleteMe and run python install.py
" install golang
" install go and set path in .profile
" open vi and run PluginInstall
" run GoInstallBinaries
 
"let g:virtualenv_directory = '~/'
"let g:ycm_path_to_python_interpreter="/bin/python"
set encoding=utf-8
set nocompatible
set runtimepath^=~/.vim/bundle/ctrlp.vim

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nmap <silent> <C-D> :NERDTreeToggle<CR>
imap <silent> <C-D> :NERDTreeToggle<CR>

nnoremap <leader>a :cclose<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-vinegar'
Plugin 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
Plugin 'mattn/emmet-vim'
Plugin 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
Plugin 'TaskList.vim'
Plugin 'dhruvasagar/vim-table-mode'
"Plugin 'cjrh/vim-conda'
Plugin 'nvie/vim-flake8'
Plugin 'gmarik/Vundle.vim'
Plugin 'derekwyatt/vim-scala'
Bundle 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'mdempsky/gocode', {'rtp': 'vim/'}
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

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast


let g:user_emmet_leader_key='<Tab>'
let NERDTreeHijackNetrw = 0
let python_highlight_all=1
syntax on

syntax on
filetype plugin on
filetype plugin indent on
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

let g:virtualenv_directory = '~/'
let g:virtualenv_stl_format = '[%n]'
"set statusline+=%{virtualenv#statusline()}
"set statusline^=%{virtualenv#statusline()}

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_add_preview_to_completeopt=1
"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:clang_library_path='/usr/local/Homebrew/Library/Homebrew/shims/mac/super/llvm_clang'
let g:indentLine_char = '|'

source ~/.vim/bundle/vim-go/autoload/go/complete.vim
setlocal omnifunc=go#complete#Complete
set omnifunc=syntaxcomplete#Complete

set wrap linebreak nolist
set tabstop=2             " number of spaces that a <tab> represents in a file
set shiftwidth=2          " number of spaces to use for (auto)indent
set expandtab             " expand tabs to spaces
set softtabstop=2         " number of spaces that a <tab> represents
set smarttab              " smart handling of tabs when inserting or deleting

let g:Powerline_symbols = 'fancy'
"set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set background=dark
colorscheme PaperColor

set nu "rnu

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


let g:tagbar_type_go = {'ctagstype' : 'go', 'kinds'     : [ 'p:package', 'i:imports:1', 'c:constants', 'v:variables', 't:types', 'n:interfaces', 'w:fields', 'e:embedded', 'm:methods', 'r:constructor', 'f:functions' ], 'sro' : '.', 'kind2scope' : { 't' : 'ctype', 'n' : 'ntype' }, 'scope2kind' : { 'ctype' : 't', 'ntype' : 'n' }, 'ctagsbin'  : 'gotags', 'ctagsargs' : '-sort -silent' }
