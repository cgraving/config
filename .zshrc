export PATH="/usr/local/sbin:$PATH"
export PATH=/Users/cgraving/bin:$PATH
export PROXY_SERVER='www-proxy-hqdc.us.oracle.com:80'

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_241.jdk/Contents/Home
export BAT_THEME="Dracula"

export editor="vim"

export ZSH="$HOME/.oh-my-zsh"
export UPDATE_ZSH_DAYS=30
#
DEFAULT_USER=cgraving
ZSH_THEME="spaceship"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"


plugins=(
   git
   macos
   iterm2
   mvn
   git-prompt
)

source $ZSH/oh-my-zsh.sh
source $HOME/.alias

fpath=(~/functions $fpath)
autoload printColors n ewrap

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
source /Users/cgraving/.sdkman/bin/sdkman-init.sh
