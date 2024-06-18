# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Go PATH
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOPATH/bin

# Set name of the theme. See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="refined"

# Set up syntax-highlighting
source $HOME/.zsh/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# Plugins
plugins=(git cmdtime zsh-syntax-highlighting)

# Language environment
export LANG=en_US.UTF-8

# Aliases
alias ls="ls -al"
alias tree="tree -a -L 1"

# Timing for commands (-1 shows just the seconds)
REPORTTIME=-1

if [[ $TERM_PROGRAM == "vscode" && -z "$VSCODE_ZSHRC_SOURCED" ]]; then
    export VSCODE_ZSHRC_SOURCED=1
    source ~/.zshrc
fi
