export EDITOR=vim

source ~/dot-files/antigen/antigen.sh

# load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme candy

antigen apply
