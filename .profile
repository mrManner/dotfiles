if [ -e /usr/share/terminfo/x/xterm-256color ]; then
		export TERM='xterm-256color'
else
		export TERM='xterm-color'
fi
TZ='Europe/Stockholm'; export TZ
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
