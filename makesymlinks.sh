#!/bin/bash
####
# This is for creating symlinks to my dotfiles
# configuration
####

dir=~/.dot-files
olddir=~/.dot-files-old
files="vimrc zshrc vim tmux.conf mpdconf"  # list of files/folders to symlink


# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir

# move any existing dotfiles in homedir to dotfiles_old directory
# then create symlinks
for file in $files; do
	echo "Moving existing dotfile $file from ~ to $olddir"
	mv ~/.$file $olddir
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done
