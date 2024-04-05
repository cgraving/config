export PATH="/usr/local/sbin:$PATH"
export PATH=/Users/cgraving/bin:$PATH
export PROXY_SERVER='www-proxy-hqdc.us.oracle.com:80'

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_241.jdk/Contents/Home
export BAT_THEME="Dracula"

export editor="vim"

export ZSH="$HOME/.oh-my-zsh"
export UPDATE_ZSH_DAYS=30

export GH_REPO=git@github.com:cgraving/productivity.git

DEFAULT_USER=cgraving
ZSH_THEME="powerlevel10k/powerlevel10k"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"


plugins=(
   git
   gh
   macos
   iterm2
   mvn
   git-prompt
)

source $ZSH/oh-my-zsh.sh
source $HOME/.alias
source $HOME/.keys

fpath=(~/functions $fpath)
autoload printColors n ewrap

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
source /Users/cgraving/.sdkman/bin/sdkman-init.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
