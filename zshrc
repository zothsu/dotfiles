export PATH=/usr/local/bin:$PATH


# Set Varriables


# Change ZSH options


# Create Aliases
alias lall=''
alias ls='ls -lAFh'

# Customize Prompts
PROMPT='
%1~ %L %# '

RPROMPT='%*'


# Add Locations to $PATH varriable


# Write Hand Functions
function mkcd() {
	mkdir -p "$@" && cd "$_";
}

# Use ZSH Plugins


# ...and other Suprises

ZSH_BASE=$HOME/dotfiles # Base directory for ZSH configuration

source $ZSH_BASE/antigen/antigen.zsh # Load Antigen

source ~/.aliases # Source some extra files
source ~/.functions

antigen use oh-my-zsh # Yes, I want to use Oh My ZSH

# Terminal stuff
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle z

# Node stuff
antigen bundle node
antigen bundle npm

# Do OS dependant stuff
case `uname` in
  Darwin)
    # Commands for OS X go here
    antigen bundle osx
  ;;
  Linux)
    # Commands for Linux go here
  ;;
esac

# Set the theme
antigen theme theunraveler

# And lastly, apply the Antigen stuff
antigen apply