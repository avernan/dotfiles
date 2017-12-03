" ########## Vim-plug ##########
" Install vim-plug if not already installed, then run plugin installation.
" Also create a few useful directories.

if empty(glob("~/.vim/autoload/plug.vim"))
    silent call system('mkdir -p ~/.vim/{autoload,bundle,undo,swaps}')
    silent call system("curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
    execute "source ~/.vim/autoload/plug.vim"
    augroup plugsetup
        au!
        autocmd VimEnter * PlugInstall
    augroup end
endif

call plug#begin("~/.vim/plugged")

" Graphics
if filereadable(expand("~/.vim/p-graphics.vim"))
    source ~/.vim/p-graphics.vim
endif

" Movement
if filereadable(expand("~/.vim/p-movement.vim"))
    source ~/.vim/p-movement.vim
endif

" Language specific
if filereadable(expand("~/.vim/p-ftype.vim"))
    source ~/.vim/p-ftype.vim
endif

" External tools integration
if filereadable(expand("~/.vim/p-tools.vim"))
    source ~/.vim/p-tools.vim
endif

call plug#end()
