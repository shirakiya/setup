#!/bin/sh

set -u

enabled() {
    type $1 > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Already installed $1"
        return 0
    else
        echo "Install $1 now ..."
        return 1
    fi
}

# install command line tools
if ! enabled xcode-select; then
    xcode-select --install
fi

SETUP=$HOME/setup
if [ ! -e $SETUP ]; then
    git clone https://github.com/shirakiya/setup.git $SETUP
fi

# install HomeBrew
if ! enabled brew; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    sh $SETUP/Brewfile.sh
fi

# cloning my dotfiles
DOTFILES=$HOME/dotfiles
if [ ! -e $DOTFILES ]; then
    git clone https://github.com/shirakiya/dotfiles.git $DOTFILES
    sh $DOTFILES/dotfilesLink.sh
fi

exit 0
