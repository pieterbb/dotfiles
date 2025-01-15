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
zsh ~/.dotfiles/setup.zsh```

Run the setup script with the `--work` flag to install only the tools I use for work.
```zsh
zsh ~/.dotfiles/setup.zsh --work
```
