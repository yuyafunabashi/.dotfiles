alias v="nvim"
alias vt="nvim '+Telescope find_files'"

export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

addToPathFront() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

export XDG_CONFIG_HOME=$HOME/.config
export EDITOR="nvim"
export GIT_EDITOR=$EDITOR
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))

addToPathFront $HOME/bin
addToPathFront /opt/homebrew/bin
addToPathFront $HOME/.local/scripts
addToPathFront $HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:
addToPathFront /usr/bin/git
addToPathFront /usr/bin/
addToPathFront $JAVA_HOME/bin

bindkey -s ^f "tmux-sessionizer\n"

gop() {
  cd $HOME/personal
}

god() {
  cd $HOME/dev
}

ps -u $(whoami) | grep ssh-agent &> /dev/null
if [ $? -ne 0 ];then
    eval $(ssh-agent)
    ssh-add
fi
trap 'ssh-agent -k; exit' 0

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source ~/.config/op/plugins.sh
