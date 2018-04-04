#!/bin/bash

echo "Setting up git..."
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if ! [ -x "$(command -v git)" ]
  then
    echo 'Installing git ...'
    sudo apt-get install git
  else
    echo "Git is alredy installed"  
fi

echo "Creating symlinks ..."
ln -sf "$DOTFILES_DIR/.gitconfig" ~
ln -sf "$DOTFILES_DIR/.gitignore_global" ~

echo "Done setting up git"