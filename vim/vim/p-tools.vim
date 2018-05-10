" Plugins to better integrate/interact with external tools

" {{{ fugitive.vim
" A Git wrapper so awesome, it should be illegal
" Generally interact with git from inside vim, some of the most useful
" features include diff with any revision of the current file, git blame,
" exploring commits and their content...
" }}}
Plug 'tpope/vim-fugitive'

" {{{ linediff.vim
" A vim plugin to perform diffs on blocks of code
" }}}
Plug 'AndrewRadev/linediff.vim'

" {{{ ale
" Asynchronous Lint Engine
" }}}
Plug 'w0rp/ale'

" {{{ denite
" Dark powered asynchronous unite all interfaces for Neovim/Vim8
" }}}
Plug 'Shougo/denite.nvim'

" {{{ YouCompleteMe
" A code-completion engine for Vim
" }}}
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }

" {{{ UltiSnips
" UltiSnips - The ultimate snippet solution for Vim.
" }}}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
