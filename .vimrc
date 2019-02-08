"--------------------------------------------------------------------------
"  Basic Setup
"--------------------------------------------------------------------------

" no compatible with VI
set nocompatible

" use utf-8 encoding
set encoding=utf-8

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype plugin indent on


"--------------------------------------------------------------------------
"  Vim-Plug Setup
"--------------------------------------------------------------------------

" Install vim-plug if we don't already have it
if empty(glob('~/.vim/autoload/plug.vim'))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    silent !mkdir -p ~/.vim/plugged
    silent !mkdir -p ~/.vim/autoload
    " Download the actual plugin manager
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    " auto install plug-in when enter vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" setup plug-in install
call plug#begin('~/.vim/plugged')

    " Colorschemes
    Plug 'sjl/badwolf'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'tomasr/molokai'
    Plug 'sickill/vim-monokai'
    Plug 'chriskempson/vim-tomorrow-theme'
    Plug 'reedes/vim-colors-pencil'
    Plug 'fxn/vim-monochrome'

    " text filter and alignment
    "Plug 'godlygeek/tabular'
    Plug 'Yggdroot/indentLine'

    " Syntax
    "Plug 'tpope/vim-git'
    Plug 'NLKNguyen/c-syntax.vim'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'vim-python/python-syntax'
    Plug 'StanAngeloff/php.vim'
    Plug 'plasticboy/vim-markdown'
    Plug 'othree/html5.vim'
    Plug 'hail2u/vim-css3-syntax'
    Plug 'pangloss/vim-javascript'
    Plug 'elzr/vim-json'

    " Writing Environment
    Plug 'junegunn/goyo.vim'

call plug#end()


"--------------------------------------------------------------------------
"  Plug-in Config
"--------------------------------------------------------------------------

" vim-markdown : disable folding
let g:vim_markdown_folding_disabled = 1 

" python-syntax : enable all python syntax highlight
let g:python_highlight_all = 1 

" vim-css3-syntax : fix limitation of vim's hightlight
augroup VimCSS3Syntax
  autocmd!
  autocmd FileType css setlocal iskeyword+=-
augroup END

"PaperColor : enable built-in function and constants for c and python 
let g:PaperColor_Theme_Options = {
  \     'language': {
  \       'python': {
  \         'highlight_builtins' : 1
  \       },
  \       'cpp': {
  \         'highlight_standard_library' : 1
  \       },
  \       'c': {
  \         'highlight_builtins' : 1
  \       }
  \     }
  \ }


"--------------------------------------------------------------------------
"  Security
"--------------------------------------------------------------------------

set hidden " Enable hidden buffers
set cryptmethod=blowfish
autocmd BufReadPost * if &key != "" | set noswapfile nowritebackup viminfo= nobackup noshelltemp history=0 secure | endif


"--------------------------------------------------------------------------
"  Look & Feel, System User Interface
"--------------------------------------------------------------------------

" Enable 256 colors
set t_Co=256

" Enable syntax hightlighting
syntax on

" Dark background is cool
set background=dark 

" default coorscheme
colorscheme PaperColor

" Show title
set title

" Better command-line completion
" press 'tab' for completion command when ':' mode
" <C-N> for next , <C-P> for previous
set wildmenu

" show partial commands in the last line of the screen
set showcmd

" Display the cursor position on the last line of the screen or in the 
" status line or a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Display relative line numbers on the left
set nonumber
set relativenumber

" highlight cursor line
set cursorline

" Toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪


"--------------------------------------------------------------------------
"  Search Setup
"--------------------------------------------------------------------------

" Highlight searches (use <C-L> to temporarily turn off highlighting;
" see the mapping of <C-L> below)
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase


"--------------------------------------------------------------------------
"  Paper and Typing Setup
"--------------------------------------------------------------------------

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled,
" keep the same indent as the line you're currently on.
" Useful for READMEs, etc.
set autoindent

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with the setup
set shiftwidth=4
set softtabstop=4
set expandtab

" colums rule 80 character and wrapmargin for line number
" set columns=80
" set wrapmargin=4
set textwidth=80
set colorcolumn=+1


"--------------------------------------------------------------------------
"  Mapping
"--------------------------------------------------------------------------
" mapping Ctrl+L = :nohl
nnoremap <C-L> :nohl<CR><C-L>
