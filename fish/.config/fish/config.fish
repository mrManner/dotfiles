fish_add_path ~/.local/bin
fish_add_path /usr/local/bin
fish_add_path /home/jmanner/go/bin

fundle plugin 'danhper/fish-ssh-agent'
fundle plugin 'brigand/fast-nvm-fish'

fundle init

# I like sudo !!
function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end


set -x YVM_DIR /home/jmanner/.yvm
[ -r $YVM_DIR/yvm.fish ]; and source $YVM_DIR/yvm.fish
