" References:
" - VIM Quick Ref: http://alexquinn.org/techref/Vim_Quick_Reference_Guide.pdf
" - http://vimdoc.sourceforge.net/htmldoc/options.html
" - https://stackoverflow.com/questions/15685729/vimscript-what-is-the-difference-between-let-g-let-b-etc

"""""""""""""""""""""""""""""""""""""""""""""""""
"------------------- Vim Plug -------------------
"""""""""""""""""""""""""""""""""""""""""""""""""

" Installs Vim-Plug automatically
" As described here: https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible              " use VIM (i.e. IMproved) settings rather than VI settings
filetype off                  " required

" See: https://github.com/junegunn/vim-plug#example
" We use the default plugin directory here, so we pass no argument
" to the plug#begin() function.
call plug#begin()

Plug 'dense-analysis/ale' " Linting plugin (syntax checking and semantic errors)
Plug 'fatih/vim-go', { 'tag': '*' } " Support for Go tool in Vim

call plug#end()

""""""""""""""""""""""""""""""""""""""""""
" ----------- Golang config --------------
""""""""""""""""""""""""""""""""""""""""""

let g:go_fmt_command = "goimports"

" Useful golang abbreviations
ab fro for
ab fnuc func

filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""
" ----------- Config ------------
"""""""""""""""""""""""""""""""""

"""" SPACES and TABS
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set backspace=2         " allow backspace on everything in insert mode
set smarttab            " be smart when using tabs
set shiftwidth=4        " control how many columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation
set ai                  " Auto indent
set si                  " Smart indent

"""" UI
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set autoindent          " copy indent on new line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set mat=5               " how many tenths of a second to blink when matching brackets
set ignorecase          " case insensitive
set ruler               " Line/char number, percentage in the bottom right of the screen
set laststatus=2        " Always show the status line
set noerrorbells        " Mute the error bell
set laststatus=2
set statusline+=%F

"""" SEARCHING
set ignorecase          " ignore case when searching
set smartcase           " when searching try to be smart about cases"
set incsearch           " search as characters are entered
set hlsearch            " highlight
set magic               " for regular expressions turn magic on

"""" COLOR
syntax enable           " enable syntax hightligthing
set background=dark     " Adapt colors on a black background

"""" ENCODING
set encoding=utf-8      " The encoding displayed
set fileencoding=utf-8  " The encoding written to file
set ffs=unix,dos,mac    " Use Unix as the standard file type

"""" OTHER
set autoread            " Set to auto read when a file is changed from the outside
set history=50          " Sets how many lines of history VIM has to remember
set textwidth=82	" Control the wrap width to use
set formatoptions=croq  " Set formatting options
