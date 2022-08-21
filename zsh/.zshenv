# xdg base directory variables
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# set ZDOTDIR (don't forget to create a symlink to this file from m ~/.zshenv 
# this is unfortunately the best practice even though I hate it)
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export ZSH=$XDG_CONFIG_HOME/oh-my-zsh

# user bin directory for npm
export PATH=$PATH:$HOME/node_modules/.bin

# user variables
export BROWSER=firefox
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hook

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

add-zsh-hook -Uz precmd rehash_precmd

