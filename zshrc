export EDITOR=vim
source ~/.dot-files/antigen/antigen.zsh

setopt auto_cd

eval `ssh-agent -s`
ssh-add

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/

antigen theme candy

antigen apply

