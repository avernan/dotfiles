function dotdrop
    pushd ~/dotfiles/
    source venv/bin/activate.fish
    ./dotdrop.sh $argv
    deactivate
    popd
end
