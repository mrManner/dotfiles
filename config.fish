set -gx PATH /home/jmanner/go/bin $PATH

. ~/.config/fish/gnupg.fish

fundle install 'danhper/fish-ssh-agent'
fundle init

# I like sudo !!

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

