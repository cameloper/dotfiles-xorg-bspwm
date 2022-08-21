# set ZDOTDIR (don't forget to create a symlink to this file from m ~/.zshenv 
# this is unfortunately the best practice even though I hate it)
export ZDOTDIR=~/.config/zsh
export ZSH=~/.config/oh-my-zsh

# user variables
export BROWSER=firefox
export GTK_THEME=Adwaita:dark
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
