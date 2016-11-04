#!/bin/bash
# .make.sh
# This script creates a symlink between dotfiles in the .dotfiles directory and the original dotfile locations

########## Variables

dir=~/.dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"
echo "Moving old dotfiled to $olddir directory"
mv ~/.bashrc ~/.bash_aliases ~/.config/nvim/init.vim $olddir
echo "Making a symlink to new dotfiles"
ln -s $dir/.bashrc ~/.bashrc
ln -s $dir/.bash_aliases ~/.bash_aliases
ln -s $dir/init.vim  ~/.config/nvim/init.vim
echo "...done"
echo "Sourcing the dotfiles"
source ~/.dotfiles/.bashrc
source $dir/.bash_aliases
source $dir/init.vim
echo "...done"
