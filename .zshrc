# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
ZSH_THEME="spaceship"
SPACESHIP_PROMPT_SYMBOL="❯"
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_BATTERY_SHOW=false
SPACESHIP_BATTERY_ALWAYS_SHOW=false

# Alias
alias downloads="cd ~/Downloads"
alias home="cd ~"
alias cde="cd ~/code"
alias scratch="cd ~/code/scratch"
alias dotfiles="cd ~/.dotfiles && ls -a"

alias nrs="npm run start"
alias nrd="npm run dev"
alias nrb="npm run build"
alias nrt="npm run test"

alias pn=pnpm
alias bn=bun
alias bnx=bunx
alias bnd="bun dev"
alias cna="bunx create-next-app"
alias nv="nvim ."

alias nvim-config="nvim ~/.config/nvim"
alias tmux-config="nvim ~/.tmux.conf"
alias tmux-source="tmux source ~/.tmux.conf"
alias zsh-config='vi ~/.zshrc'
alias zsh-source="source ~/.zshrc"

alias hosts='sudo vi /etc/hosts'
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

# Shortcuts
alias g="git"
alias v="vim"

# Git
alias gs="git status"
alias gb="git branch"
alias gc="git add . && git commit -m"
alias gd="git diff"
alias gp="git pull"
alias gp="git push"
alias gu="git restore --staged ."
alias gw="commit wip"


plugins=(git)
source $ZSH/oh-my-zsh.sh
source "~/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# bun completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


clear



source "~/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
