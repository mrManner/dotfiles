# Much of this comes from https://github.com/spicycode/ze-best-zsh-config

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# OH-MY-ZSH ===================================================================
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
export UPDATE_ZSH_DAYS=14

# Completion etc. =============================================================
COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"
autoload -U compinit
compinit
setopt completealiases

# zstyle ':completion:*' menu select yes
zstyle ':completion:*:default' list-colors ''

zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate
zstyle ':completion:*' menu select=1 _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # Don't be so sensitive
setopt PROMPT_SUBST
unsetopt MENU_COMPLETE
setopt AUTO_MENU

setopt AUTO_CD  # CDs are obsoletei

setopt COMPLETE_IN_WORD 
setopt ALWAYS_TO_END 


# History. =================================================================
setopt APPEND_HISTORY 
setopt INC_APPEND_HISTORY 
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt EXTENDED_HISTORY
export HISTFILE=~/.zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000


 #Misc. =======================================================================
HIST_STAMPS="yyyy-mm-dd"


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
export EDITOR='vim'

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

# Functions ===================================================================

function extract {
# From https://github.com/spicycode/ze-best-zsh-config
  echo Extracting $1 ...
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xjf $1  ;;
          *.tar.gz)    tar xzf $1  ;;
          *.bz2)       bunzip2 $1  ;;
          *.rar)       unrar x $1    ;;
          *.gz)        gunzip $1   ;;
          *.tar)       tar xf $1   ;;
          *.tbz2)      tar xjf $1  ;;
          *.tgz)       tar xzf $1  ;;
          *.zip)       unzip $1   ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1  ;;
          *)        echo "'$1' cannot be extracted via extract()" ;;
      esac
  else
      echo "'$1' is not a valid file"
  fi
}

# added by travis gem
[ -f /Users/jmanner/.travis/travis.sh ] && source /Users/jmanner/.travis/travis.sh
