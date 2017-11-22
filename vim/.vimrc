" {{{ General configuration

set number
set backspace=indent,eol,start

" }}}

" {{{ Terminal specific configuration

if &term == "xterm-kitty"
    " Kitty has support for changing cursor shape through the following escape codes:
    " '<Esc>[<N> q' where <N> is one of 1 (block), 3 (underline) and 5 (block)
    " {{{ Notes
    " TODO: this may also be controlling the blinking (even/odd?)
    " https://github.com/kovidgoyal/kitty/blob/cd1ba334c1ccbbb621f460bd52c41ebc6c45ff7c/kitty_tests/parser.py#L157
    " https://github.com/kovidgoyal/kitty/blob/4dc6918b13f8acdf50d13de5c903407f67b7d5cd/kitty/control-codes.h#L247
    " https://github.com/kovidgoyal/kitty/blob/4dc6918b13f8acdf50d13de5c903407f67b7d5cd/kitty/screen.c#L1126
    " }}}
    let &t_SI = "\<Esc>[5 q"
    let &t_SR = "\<Esc>[1 q"
    let &t_EI = "\<Esc>[1 q"
endif

" }}}
