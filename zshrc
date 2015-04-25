export EDITOR=vim

source ~/dotfiles/antigen/antigen.zsh

# load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme candy

antigen apply
