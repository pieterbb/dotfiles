
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
alias code="cursor"

# Docker
alias dc='docker-compose'

# Kubernetes
alias k='kubectl'
alias kctx="kubectl ctx"
alias kns="kubectl ns"

# Terminal
alias ls='ls -lah'
alias reload='source ~/.zshrc'
alias zc='vim ~/.zshrc'
alias logline='git log --graph --pretty=tformat:"%Cred%h%Creset %C(bold blue)%<(20,trunc)%an%Creset %C(auto)%d%Creset %s %Cgreen(%cr) "'
alias hosts='sudo vi /etc/hosts'
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
alias localip="ipconfig getifaddr en0"

# Git
alias s='git status -sb'
alias ga='git add -A'
alias gap='ga -p'
alias gbr='git branch -v'
gc() {
  git diff --cached | grep '\btap[ph]\b' >/dev/null &&
    echo "\e[0;31;29mOops, there's a #tapp or similar in that diff.\e[0m" ||
    git commit -v "$@"
}
alias gch='git cherry-pick'
alias gcm='git commit -v --amend'
alias gco='git checkout'
alias gd='git diff -M'
alias gd.='git diff -M --color-words="."'
alias gdc='git diff --cached -M'
alias gdc.='git diff --cached -M --color-words="."'
alias gf='git fetch'
git_current_branch() {
  cat "$(git rev-parse --git-dir 2>/dev/null)/HEAD" | sed -e 's/^.*refs\/heads\///'
}
alias glog='git log --date-order --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias gl='glog --graph'
alias gla='gl --all'
alias gm='git merge --no-ff'
alias gmf='git merge --ff-only'
alias gp='git push'
alias gpthis='gp origin $(git_current_branch)'
alias gpthis!='gp --set-upstream origin $(git_current_branch)'
alias grb='git rebase -p'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias gr='git reset'
alias grh='git reset --hard'
alias grsh='git reset --soft HEAD~'
alias grv='git remote -v'
alias gs='git show'
alias gs.='git show --color-words="."'
alias gst='git stash'
alias gstp='git stash pop'
alias gup='git pull'

alias gs="git status"
alias gb="git branch"
alias gc="git add . && git commit -m"
alias gd="git diff"
alias gp="git pull"
alias gp="git push"
alias gu="git restore --staged ."
alias gw="commit wip"


alias nv="nvim ."
alias nvim-config="nvim ~/.config/nvim"
alias tmux-config="nvim ~/.tmux.conf"
alias tmux-source="tmux source ~/.tmux.conf"

# Shortcuts
alias g="git"
alias v="vim"



plugins=( zsh-interactive-cd zsh-autocomplete)
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# bun completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source "/opt/homebrew/opt/spaceship/spaceship.zsh"
source "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

clear

# bun completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Enable vi mode
bindkey -v

