HISTFILE=$HOME/.zsh_history
HISTSIZE=50000
SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt share_history

setopt auto_cd

zstyle ':autocomplete:*' min-input 1

export LC_ALL=en_US.utf-8
export PATH=$HOME/.cargo/bin:$HOME/.local/bin:$PATH
export SSH_PATH=$HOME/code/cloud/ssh

export WORKON_HOME=$HOME/.venvs
export PROJECT_HOME=$HOME/.projs
source /usr/bin/virtualenvwrapper_lazy.sh

export ZOOOM_CONFIG=$HOME/.config/zooom/config.json

# git
alias g="git"
alias ga="git add"
alias gaa="git add -A"
alias gb="git branch"
alias gc="git commit"
alias gcm="git commit -m"
alias gcf="git config"
alias gco="git checkout"
alias gd="git diff"
alias gf="git fetch"
alias gl="git pull"
alias gp="git push"
alias gr="git remote"
alias gt="git tag"

# python
alias piplr="pip freeze > requirements.txt"
alias pipir="pip install -r requirements.txt"
alias py="python"

# ansible
alias a="ansible"
alias apb="ansible-playbook"

# terraform
alias tf="terraform"
alias tfa="terraform apply"
alias tfaa="terraform apply -auto-approve"
alias tfd="terraform destroy"
alias tff="terraform fmt"
alias tfi="terraform init"
alias tfo="terraform output"
alias tfp="terraform plan"
alias tfv="terraform validate"

# yt-dlp
alias yt-aud="yt-dlp -f 'ba' -x --downloader aria2c"
alias yt-mp3="yt-dlp -f 'ba' -x --downloader aria2c --audio-format mp3"
alias yt-m4a="yt-dlp -f 'ba' -x --downloader aria2c --audio-format m4a"

# commands
alias cd="z"
alias hx="helix"
alias ls="exa --icons"

edkey() {
  ssh-keygen -t ed25519 -N '' -C "$1-pubkey" -f $1
}
pperm() {
  find $1 -type d -exec chmod 755 {} +
  find $1 -type f -exec chmod 644 {} +
}

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source $HOME/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
