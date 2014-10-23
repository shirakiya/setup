#! /bin/sh
set -eu

enabled() { type $1 > /dev/null 2>&1; }
require() { if ! enabled $1; then echo "Please install $1."; exit 1; fi }

# cloning my dotfiles
DOTFILES=$HOME/dotfiles
if [ ! -e $DOTFILES ]; then
    git clone https://github.com/shirakiya/dotfiles.git $DOTFILES
    sh $DOTFILES/dotfilesLink.sh
fi

# install HomeBrew
if ! enabled brew; then
	ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

SETUP=$HOME/setup
brew bundle $SETUP/Brewfile
