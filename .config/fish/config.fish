. ~/.config/fish/gnupg.fish
. ~/software/google-cloud-sdk/path.fish.inc

set -gpx PATH /usr/local/bin
set -gax PATH (go env GOPATH)/bin 
set -gax PATH ~/.local/bin 

fundle plugin 'danhper/fish-ssh-agent'
fundle plugin 'jorgebucaran/nvm.fish'
fundle plugin 'cideM/fish-yvm'
fundle init

# I like sudo !!
function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end


set -x YVM_DIR /usr/local/opt/yvm
[ -r $YVM_DIR/yvm.fish ]; and source $YVM_DIR/yvm.fish
