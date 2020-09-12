. ~/.config/fish/gnupg.fish

set -gx PATH $PATH ~/.local/bin $PATH 
set -gx PATH $PATH (go env GOPATH) 
. ~/software/google-cloud-sdk/path.fish.inc

fundle plugin 'danhper/fish-ssh-agent'
fundle init

# I like sudo !!
function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

