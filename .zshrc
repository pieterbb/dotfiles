
#-------------------------------------
# Default configurations
#-------------------------------------
source $HOME/.dotfiles/.zshrc_default

#-------------------------------------
# Local configurations
#-------------------------------------
# Load local configurations if they exist
if [ -f "$HOME/.dotfiles/.zshrc_local" ]; then
    source "$HOME/.dotfiles/.zshrc_local"
fi
