" {{{ Graphics settings

try
	colorscheme apprentice
catch
    colorscheme elflord
endtry

if &term =~ '256color\|kitty'
    " Disable Background Color Erase (BCE) so that color schemes render
    " properly inside 256-color tmux and GNU screen as well as in kitty. See
    " https://sunaku.github.io/vim-256color-bce.html
    " http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

let g:lightline = {
            \ 'colorscheme': 'jellybeans',
            \ }

" }}}

" {{{ Linters settings

let g:ale_linters = {
            \ 'c': ['clangtidy'],
            \ 'cpp': ['clangtidy']
            \}

" }}}
