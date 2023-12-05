#!/usr/bin/env zsh

# Install Homebrew & git with Homebrew
# Git clone this repo into home directory and run this script

# git clone https://github.com/thenameiswiiwin/dotfiles-2.git ~/.dotfiles

echo "Hello $(whoami)! Let's get you set up."

cd ~
mkdir -p ~/code/projects
mkdir -p ~/code/playground


# Check for Oh My Zsh and install if we don't have it
if [ -d ~/.oh-my-zsh ]; then
	echo "oh-my-zsh is installed"
 else
 	echo "oh-my-zsh is not installed, attempting to install"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

echo "Creating symlinks for dotfiles..."
# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf ~/.vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc

rm -rf ~/.config/nvim
ln -s ~/.dotfiles/nvim ~/.config/nvim

echo "Upgrading brew stuff..."
# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade


echo "Brew installing stuff"
# ---------------------------------------------
# Programming Languages and Frameworks
# ---------------------------------------------
# Core Utils
brew install coreutils

# NodeJS 
brew install node
brew install nvm
brew tap oven-sh/bun # for macOS and Linux
brew install bun

brew install python
brew install git
brew install ffmpeg
brew install wget
brew install fzf
brew install neovim
brew install ripgrep


# ---------------------------------------------
# Tools I use often
# ---------------------------------------------
# brew install --cask notion
# brew install --cask telegram
# brew install --cask cleanshot
# brew install --cask vlc
# brew install --cask whatsapp
# brew install --cask focus
brew install --cask raycast
brew install --cask google-chrome
brew install --cask firefox
brew install --cask rectangle
brew install --cask spotify
brew install --cask iterm2
brew install --cask docker
brew install --cask postman
brew install --cask keka
brew install --cask sublime-text
brew install --cask obsidian
brew install --cask visual-studio-code
brew install --cask sourcetree
brew install --cask font-fira-mono-nerd-font


# Install the oh-my-zsh spaceship theme
npm install -g spaceship-zsh-theme


# ---------------------------------------------
# OSX Defaults
# ---------------------------------------------

# Expanding the save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Save screenshots to the Desktop (or elsewhere)
defaults write com.apple.screencapture location "${HOME}/Downloads"

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Set highlight color to green
defaults write NSGlobalDomain AppleHighlightColor -string "0.764700 0.976500 0.568600"

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# For VSCode, enable keyrepeat with vim 
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Show only open applications in the Dock
defaults write com.apple.dock static-only -bool true

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Hide Safari’s bookmarks bar by default
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Hide Safari’s sidebar in Top Sites
defaults write com.apple.Safari ShowSidebarInTopSites -bool false

# Disable Safari’s thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Remove useless icons from Safari’s bookmarks bar
defaults write com.apple.Safari ProxiesInBookmarksBar "()"

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false



echo "Generating a new SSH key for GitHub..."

# Check if SSH key already exists
if [[ -f ~/.ssh/id_ed25519 ]]; then
    echo "SSH key already exists. Skipping key generation."
else
    ssh-keygen -t ed25519 -C "$1" -f ~/.ssh/id_ed25519
fi

eval "$(ssh-agent -s)"

touch ~/.ssh/config
echo "Host *\n AddKeysToAgent yes\n UseKeychain yes\n IdentityFile ~/.ssh/id_ed25519" | tee ~/.ssh/config

ssh-add -K ~/.ssh/id_ed25519

echo "\n \nDone! \n \n"

echo "Login to Chrome to sync settings, login in to vscode to sync settings, check GitHub author config file, add SSH keys to GitHub and servers"
echo "Login in to Visual Studio Code to sync settings"
echo "Setup modifier keys for the keyboard in System Preferences > Keyboard"
echo "Load settings & theme file in iTerm2"
echo "run pbcopy < ~/.ssh/id_ed25519.pub and paste that into GitHub"