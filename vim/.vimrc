set nocompatible
set enc=utf8
" Line numbers on
set nu
syntax on
set background=dark

" os x backspace fix
set backspace=indent,eol,start
set modelines=0 " dont need modelines and the potential security hazard

"set t_kb
fixdel

" Setup term color support
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif

" show trailing whitespace chars
" set list
" set listchars=tab:>-,trail:.,extends:#,nbsp:.

" Better buffer management - hide buffers instead of closing them
" set hidden

set history=100 " Default history is only 20
set undolevels=100  " Use more levels of undo

" tab -> spaces
set expandtab
set tabstop=4 " a tab is 4 spaces
set softtabstop=4 " tab size when insterting/pasting
set shiftwidth=4 " number of spaces to use for autoindenting
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab " insert tabs on the start of a line according to shiftwidth, not tabstop

" always set autoindenting on
set autoindent
" copy the previous indentation on autoindenting
set copyindent

" Enable filetype detection
filetype on
" Enable filetype-specific indenting
filetype indent on
" Enable filetype-specific plugins
filetype plugin on

" Ruler on
set ruler

" status line
set laststatus=2

" better backup, swap and undos storage
set directory=~/.vim/dirs/tmp     " directory to place swap files in
set backup                        " make backup files
set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo
" create needed directories if they don't exist
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
    call mkdir(&directory, "p")
endif
if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif

" Plugin manager
if filereadable(expand("~/.vim_custom/vim-plug.vim"))
    execute 'source' expand("~/.vim_custom/vim-plug.vim")
elseif filereadable(expand("~/.vim_custom/vundle.vim"))
    execute 'source' expand("~/.vim_custom/vundle.vim")
else
    echom "No plugin manager is being used."
endif

map <F2> :NERDTreeToggle<CR>
