"Setting VIMHOME
let $VIMHOME = $HOME."/.vim"

"Setting PYTHONPATH
let $PYTHONPATH .= ":".$VIMHOME."/python"

"load bundle plugins
call pathogen#infect()

"add go vim plugins
set rtp+=$GOROOT/misc/vim

syntax on
"filetype on
filetype indent on
filetype plugin on

"Hidden mode
set hidden
set number

"Bad whitespaces
autocmd BufEnter * highlight BadWhitespace ctermbg=red guibg=red
autocmd BufEnter * match BadWhitespace /^\t\+/
autocmd BufEnter * match BadWhitespace /\s\+$/

"Search settings
set hlsearch
set incsearch

"Setting up tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set tabpagemax=20
set showtabline=4
set autoindent
set expandtab
set smartindent
set smarttab
set wildmenu
set wildmode=list:longest
set cursorline

"autocmd FileType * set noexpandtab
"autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4|set smartindent|set smarttab

" read open files again when changed outside Vim
set autoread

" which directory to use for the file browser
set browsedir=current

" show the cursor position all the time
set ruler

" display incomplete commands
set showcmd

" configure persitent undo
set undodir=/var/vim_undo

" folding
set foldmethod=indent

"Start mappings
"==============
"NERDTree
nmap <silent> <c-p> :NERDTreeToggle<CR>

" Removes trailing spaces
function TrimWhiteSpaces()
    %s/\s*$//
    ''
:endfunction

"Colorscheme
colorscheme darkblue

if has("gui_running")

    "guifont
    set guifont=Monaco:h12

    set guioptions=egmt
    "set fuoptions=maxvert,maxhorz
endif
