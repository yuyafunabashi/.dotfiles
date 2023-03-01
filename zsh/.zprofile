VIM='nvim'

export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

addToPathFront() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

export EDITOR=$VIM
export GIT_EDITOR=$VIM

addToPathFront /opt/homebrew/bin
addToPathFront $HOME/.local/scripts
addToPathFront $HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:
addToPathFront /usr/bin/git

bindkey -s ^f "tmux-sessionizer\n"

goPersonal() {
    cd $HOME/personal
}

goWork() {
    cd $HOME/work
}

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(ssh-agent -s)"
eval "$(/opt/homebrew/bin/brew shellenv)"
