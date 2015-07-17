export EDITOR=vim

source "${HOME}/.dot-files/zgen/zgen.zsh"

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

force_color_prompt=yes

setopt auto_cd

eval `ssh-agent -s`
ssh-add

if ! zgen saved; then

    echo "Creating a zgen save"

    zgen oh-my-zsh

    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search

    zgen load zsh-users/zsh-completions src

    zgen load caiogondim/bullet-train-oh-my-zsh-theme bullet-train

    zgen save

fi
