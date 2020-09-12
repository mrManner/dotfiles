. ~/.config/fish/gnupg.fish
. ~/software/google-cloud-sdk/path.fish.inc

set -gpx PATH /usr/local/bin
set -gax PATH (go env GOPATH)/bin 
set -gax PATH ~/.local/bin 

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

