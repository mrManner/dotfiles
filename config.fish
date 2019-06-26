fundle plugin 'danhper/fish-ssh-agent'

# I like sudo !!

. ~/.config/fish/gnupg.fish

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

fundle init
