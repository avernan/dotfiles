" Plugins to make moving around easier

" {{{ matchit.vim
" Extended % matching for HTML, LaTeX, and many other languages.
" This plugin is included (but not enabled) with modern vim distributions
" Enable Vim's % command to move between html tags/if_endif constructs etc.
" }}}
runtime macros/matchit.vim

" {{{ sneak.vim
" The missing motion for Vim :athletic_shoe:
" At its simplest, type s{char}{char} to jump to the next occurrence of the
" two characters even across lines. Keep moving with ';'. Half way through the
" more local 'f' and less immediate search.
" }}}
Plug 'justinmk/vim-sneak'
