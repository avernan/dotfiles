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

set laststatus=2
set noshowmode

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

" }}}

" {{{ Terminal specific configuration

if &term == 'xterm-kitty' || $VTE_VERSION !=? ''
    " Kitty has support for changing cursor shape through the following escape codes:
    " '<Esc>[<N> q' where <N> is one of 1 (block), 3 (underline) and 5 (block)
    " {{{ Notes
    " TODO: this may also be controlling the blinking (even/odd?)
    " https://github.com/kovidgoyal/kitty/blob/cd1ba334c1ccbbb621f460bd52c41ebc6c45ff7c/kitty_tests/parser.py#L157
    " https://github.com/kovidgoyal/kitty/blob/4dc6918b13f8acdf50d13de5c903407f67b7d5cd/kitty/control-codes.h#L247
    " https://github.com/kovidgoyal/kitty/blob/4dc6918b13f8acdf50d13de5c903407f67b7d5cd/kitty/screen.c#L1126
    " }}}
    " Similar support has been added to VTE based terminals. TODO: check
    " initial version supporting it
    let &t_SI = "\<Esc>[6 q"
    let &t_SR = "\<Esc>[4 q"
    let &t_EI = "\<Esc>[2 q"
endif

if &term == "xterm-kitty" && has('patch1358')
    " Enable undercurl in terminal vim. As far as I know, this is only
    " available in kitty at the moment
    let &t_Cs = "\<Esc>[6m"
    let &t_Ce = "\<Esc>[24m"
endif

" Set termguicolors for terminals that support it
if has('termguicolors') && $COLORTERM == 'truecolor'
    set termguicolors
endif

" }}}

if filereadable(expand("~/.vim/plugins.vim"))
    source ~/.vim/plugins.vim
endif

if filereadable(expand("~/.vim/p-settings.vim"))
    source ~/.vim/p-settings.vim
endif

" {{{ Mappings

map Y y$
nnoremap <silent><C-L> :nohlsearch<CR><C-L>

" }}}

