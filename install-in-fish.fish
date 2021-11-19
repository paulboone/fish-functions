function install-in-fish -d "links all .fish scripts in this directory to the fish functions dir"
    for f in *.fish
        echo (basename $f .fish)
        ln -f (realpath $f)  (realpath ~/.config/fish/functions/$f)
    end
end
