# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_DISABLE_COMPFIX="true"

# Path to your oh-my-zsh installation.
export ZSH="/Users/szelemeh/.oh-my-zsh"


DEFAULT_USER=whoami

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Quickframe related aliases
alias bs="npm run local:blackstar"
alias dc="docker compose up"
alias ar="docker restart api"

alias nb="git checkout -b"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
code() {
   open -a Visual\ Studio\ Code.app $1
}
