# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"

# Alias
alias downloads="cd ~/Downloads"
alias home="cd ~"
alias prj="cd ~/code/projects"
alias plg="cd ~/code/playground"
alias plgi='f() { mkdir -p ~/code/playground/"$1" && cd ~/code/playground/"$1"; }; f'
alias scratch='f() { rand_id=$(date +%s | sha256sum | base64 | head -c 8); mkdir -p ~/code/playground/scratch"$rand_id" && cd ~/code/playground/scratch"$rand_id" && bun init -y  && code .}; f'

alias dotfiles="cd ~/.dotfiles && ls -a"
alias dot="cd ~/.dotfiles && code ."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias next-init='f() { bunx create-next-app ~/code/playground/"$1" --eslint --app --use-bun --ts --tailwind; cd ~/code/playground/"$1" && code .; }; f'

alias nrs="npm run start"
alias nrd="npm run dev"
alias nrb="npm run build"
alias nrt="npm run test"

alias pn=pnpm
alias bn=bun
alias bnx=bunx
alias bnd="bun dev"
alias cna="bunx create-next-app@latest"
alias bni="bun run index.ts"

alias nv="nvim ."

alias nvim-config="nvim ~/.config/nvim"
alias tmux-config="nvim ~/.tmux.conf"
alias tmux-source="tmux source ~/.tmux.conf"
alias zsh-config='vi ~/.zshrc'
alias zsh-source="source ~/.zshrc"

alias hosts='sudo vi /etc/hosts'
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
alias localip="ipconfig getifaddr en0"

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


plugins=(git zsh-interactive-cd zsh-autocomplete)
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# bun completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source "/opt/homebrew/opt/spaceship/spaceship.zsh"

clear

# bun completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Enable vi mode
bindkey -v