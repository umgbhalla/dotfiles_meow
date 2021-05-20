#                                      ██
#                                     ░██
#                       ██████  ██████░██      ██████  █████
#                      ░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#                         ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#                    ██  ██    ░░░░░██░██  ░██ ░██   ░██   ██
#                   ░██ ██████ ██████ ░██  ░██░███   ░░█████
#                   ░░ ░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░
#
#
#


export BROWSER=firefox
export ZSH=$HOME/.oh-my-zsh
export JAVA_HOME='/usr/lib/jvm/java-8-openjdk/jre/'
export PATH=$JAVA_HOME/bin:$PATH 
export ANDROID_SDK_ROOT='/opt/android-sdk'
export CHROME_EXECUTABLE='/usr/bin/google-chrome-stable'
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/
export PATH=$PATH:'/home/umang/.node_modules/bin'
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:/home/umang/.cargo/bin
export CM_LAUNCHER=rofi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"

export VISUAL=nvim
export EDITOR="$VISUAL"

# ZSH_THEME="agnoster"
# ZSH_THEME="robbyrussell"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,

ZSH_THEME="avit"
# ZSH_THEME="random"
# ZSH_THEME="wedisagree"

plugins=(fzf zsh-autosuggestions zsh-syntax-highlighting web-search)
### "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"


open_with_fzf() {
    fd -t f -H -I | fzf -m --preview="xdg-mime query default {}" | xargs -ro -d "\n" xdg-open 2>&-
}
cd_with_fzf() {
    cd $HOME && cd "$(fd -t d | fzf --preview="tree -L 1 {}" --bind="space:toggle-preview" --preview-window=:hidden)"
}

alias cz='cd_with_fzf'
alias oz='open_with_fzf'
#
# User configuration

# only for git
#zstyle ':completion:*:*:git:*' fzf-search-display true
# or for everything
zstyle ':completion:*' fzf-search-display true


export NVM_DIR="/home/umang/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# Path to your oh-my-zsh installation.
source $ZSH/oh-my-zsh.sh

source ~/.config/zsh/.aliases
source ~/.profile
# eval "$(starship init zsh)"
alias ide="tmux  split-window -v -p 30 ;	tmux  split-window -h -p 50  "


#eval $(thefuck --alias)
#autoload -Uz compinit
#"figlet -c -f ~/.local/share/fonts/figlet-fonts/3d.flf hello magnus"  
#bat ~/.todo

