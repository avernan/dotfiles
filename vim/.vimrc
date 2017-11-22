" {{{ General configuration

set number
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set autoread
set hidden
set autoindent
set smartindent
set smarttab
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set nowrap
set foldmethod=marker
set foldcolumn=3
set scrolloff=6
set sidescrolloff=10
set sidescroll=1
set incsearch
set hlsearch
set ignorecase
set smartcase
set confirm
set wildmenu
set wildmode=longest:full,full
set wildignorecase
set clipboard^=unnamedplus

set modeline
set modelines=1

set spell
set spelllang=en_gb

" Show characters for tab, trailing space and extends/precedes when nowrap is on
set list
if (&termencoding ==# "utf-8" || &encoding ==# "utf-8")
    let &listchars = "tab:\u21e5\u00b7,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
    let &fillchars = "vert:\u259a,fold:\u00b7"
else
    set listchars=tab:>\ ,trail:-,extends:>,precedes:<
endif

if has("persistent_undo")
    set undodir=~/.vim/undo/
    set undofile
    set undolevels=2000
endif

    let &t_EI = "\<Esc>[1 q"
endif

" }}}
