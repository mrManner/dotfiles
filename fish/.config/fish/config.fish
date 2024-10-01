fish_add_path ~/.local/bin
fish_add_path /usr/local/bin
fish_add_path /home/jmanner/go/bin

fundle plugin 'danhper/fish-ssh-agent'
fundle plugin 'jorgebucaran/nvm.fish'

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

pyenv init - | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /usr/bin/conda
    eval /usr/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/usr/etc/fish/conf.d/conda.fish"
        . "/usr/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/usr/bin" $PATH
    end
end
# <<< conda initialize <<<

