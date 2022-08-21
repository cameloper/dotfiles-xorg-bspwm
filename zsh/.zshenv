# xdg base directory variables
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# set ZDOTDIR (don't forget to create a symlink to this file from m ~/.zshenv 
# this is unfortunately the best practice even though I hate it)
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export ZSH=$XDG_CONFIG_HOME/oh-my-zsh

# user variables
export BROWSER=firefox
export GTK_THEME=Adwaita:dark
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
