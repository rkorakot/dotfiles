" no compatible with VI
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype plugin indent on

" --------------------------------------------------
" ///// Vim-Plug ///////////////////////////////////
" --------------------------------------------------
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
    Plug 'captbaritone/molokai'
    Plug 'sickill/vim-monokai'
    Plug 'chriskempson/vim-tomorrow-theme'

    " text filter and alignment
    "Plug 'godlygeek/tabular'

    " Syntax
    Plug 'tpope/vim-git'
    Plug 'NLKNguyen/c-syntax.vim'
    Plug 'plasticboy/vim-markdown'
    Plug 'elzr/vim-json'
    Plug 'fatih/vim-go'
    Plug 'hdima/python-syntax'
    Plug 'hail2u/vim-css3-syntax'
    Plug 'othree/html5.vim'

call plug#end()

" manual setup plug-in options
let g:vim_markdown_folding_disabled = 1 " vim-markdown : disable folding

" \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

" --------------------------------------------------
" ///// Security ///////////////////////////////////
" --------------------------------------------------
set hidden " Enable hidden buffers
set cryptmethod=blowfish
autocmd BufReadPost * if &key != "" | set noswapfile nowritebackup viminfo= nobackup noshelltemp history=0 secure | endif

" \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

" --------------------------------------------------
" ///// SUI, Look and Feel /////////////////////////
" --------------------------------------------------
set t_Co=256 " Enable 256 colors
syntax on " Enable syntax highlighting
set background=dark " dark background is cool
colorscheme molokai " ~/.vim/colors/

set title " Show title

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

" Display line numbers on the left
set number

" highlight cursor line
set cursorline

" Toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

" --------------------------------------------------
" ///// Search Setup ///////////////////////////////
" --------------------------------------------------
" Highlight searches (use <C-L> to temporarily turn off highlighting;
" see the mapping of <C-L> below)
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

" --------------------------------------------------
" ///// Paper and Typing Setup /////////////////////
" --------------------------------------------------
" use utf-8 encoding
set encoding=utf-8

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

" \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

" --------------------------------------------------
" ///// Mapping ////////////////////////////////////
" --------------------------------------------------
" mapping Ctrl+L = :nohl
nnoremap <C-L> :nohl<CR><C-L>

" \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
