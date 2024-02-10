# Dotfiles

## Install Homebrew & Git

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install git
```

## Clone this Repo

```zsh
git clone https://github.com/pieterbb/dotfiles.git ~/.dotfiles
```

## Run setup script

```zsh
zsh ~/.dotfiles/setup.zsh
```

## Todo:

- Automatically remap esc to capslock in settings
- The folders are not created with the right permissions, I've added sudo. Does this fix it?
- Iterm2 settings don't load properly on new setup
