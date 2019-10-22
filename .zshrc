# get bash scricpt
source $HOME/.bash_profile

# java config
# export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home
export ANDROID_HOME=/Users/spankie/Library/Android/sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/build-tools/29.0.1

# Alias
alias gopath="cd $GOPATH/src/github.com/spankie"
alias goweb="cd /Library/WebServer/Documents"
alias startmysql="mysql.server start"
alias stopmysql="mysql.server stop"

##############################################################################
# History Configuration
##############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed

# add powerlevel9k theme
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
source  ~/powerlevel9k/powerlevel9k.zsh-theme

# zsh syntax highlight.
# THIS MUST REMAIN AT THE END OF THIS FILE!!!
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/spankie/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/spankie/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/spankie/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/spankie/google-cloud-sdk/completion.zsh.inc'; fi
