export EDITOR=vim
source ~/.dot-files/antigen/antigen.zsh

eval `ssh-agent -s`
ssh-add

# load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme candy

antigen apply

NPM_PACKAGES="/home/danielmiller/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export NVM_DIR="/home/danielmiller/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
