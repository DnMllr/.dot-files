#!/bin/bash
####
This is for creating symlinks to my dotfiles
configuration
####

dir=~/dotfiles
olddir=~/dotfiles_old
files="vimrc zshrc vim"  # list of files/folders to symlink


# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir

# move any existing dotfiles in homedir to dotfiles_old directory
# then create symlinks
for file in $files; do
	echo "Moving existing dotfile $file from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done

mv $dir/Vundle.vim ~/.vim/bundle/Vundle.vim
