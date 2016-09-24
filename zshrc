export EDITOR=vim

source "${HOME}/.dot-files/zgen/zgen.zsh"

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

fpath=( "$HOME/.zfunctions" $fpath )

force_color_prompt=yes

alias webern='ssh dnmllr@45.33.51.214'
alias music_server='mpd'
alias music_player='ncmpcpp'
alias v='vim'
alias flux='cd ~/Documents/programming/flux/genie && nvm use 4.4.3'

setopt auto_cd

if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    ssh-add
fi

fpath=(/usr/local/share/zsh-completions $fpath)

if ! zgen saved; then

    echo "Creating a zgen save"

    zgen oh-my-zsh

    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found

    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search

    zgen load zsh-users/zsh-completions src

    zgen load mafredri/zsh-async
    zgen load miekg/lean

    zgen save

fi

export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"
export PATH=~/documents/programming/google/depot_tools:~/.cargo/bin:"$PATH"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

export SCHEME_LIBRARY_PATH=/usr/local/lib/slib/



# The next line updates PATH for the Google Cloud SDK.
source '/Users/danielmiller/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/danielmiller/google-cloud-sdk/completion.zsh.inc'

export NVM_DIR="/Users/danielmiller/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

setopt extended_glob

export GOPATH="$HOME/.go_wrks"
