set -gx PATH /home/jmanner/go/bin $PATH

# I like sudo !!

. ~/.config/fish/gnupg.fish

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end
