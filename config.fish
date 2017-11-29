set PATH /Users/jmanner/bin /opt/local/bin /opt/local/sbin $PATH

# I like sudo !!

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end
