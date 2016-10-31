#!/bin/bash
# .make.sh
# This script creates a symlink between dotfiles in the .dotfiles directory and the original dotfile locations

########## Variables

dir=~/.dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc bash_aliases"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
mv ~/.config/nvim/init.vim  ~/dotfiles_old/
echo "Creating a symlink to the init.vim file in the ~/.config/nvim directory"
ln -s $dir/init.vim  ~/.config/nvim/init.vim
