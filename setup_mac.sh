#!/bin/sh

set -u

enabled() {
    type $1 > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "\033[31mAlready installed $1\033[m"
        return 0
    else
        echo "\033[31mInstall $1 just now ...\033[m"
        return 1
    fi
}

exist() {
    if [ -e $1 ]; then
        echo "\033[31mAlready cloned to $1 through Git\033[m"
        return 0
    else
        echo "\033[31mClone to $1 just now ...\033[m"
        return 1
    fi
}

# install command line tools
if ! enabled xcode-select; then
    xcode-select --install
fi

SETUP=$HOME/setup
if ! exist $SETUP; then
    git clone https://github.com/shirakiya/setup.git $SETUP
fi

# install HomeBrew
if ! enabled brew; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    sh $SETUP/Brewfile.sh
fi

# cloning my dotfiles
DOTFILES=$HOME/dotfiles
if ! exist $DOTFILES; then
    git clone https://github.com/shirakiya/dotfiles.git $DOTFILES
    sh $DOTFILES/dotfilesLink.sh
fi

exit 0
