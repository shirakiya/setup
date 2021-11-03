#!/bin/bash

set -u
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

enabled() {
    type $1 > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "\033[32mAlready installed $1\033[m"
        return 0
    else
        echo "\033[31mInstall $1 just now ...\033[m"
        return 1
    fi
}

exist() {
    if [ -e $1 ]; then
        echo "\033[32mAlready cloned to $1 through Git\033[m"
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
    git clone git@github.com:shirakiya/setup.git $SETUP
fi

# install Homebrew and apps
if ! enabled brew; then
  sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  cd $SETUP
  brew update
  make brew/bundle
  cd $HOME
fi

# cloning my dotfiles
DOTFILES=$HOME/dotfiles
if ! exist $DOTFILES; then
  git clone git@github.com:shirakiya/dotfiles.git $DOTFILES
  sh $DOTFILES/dotfilesLink.sh
fi

# Enable key repeat for Visual Studio Code.
# ref. https://qiita.com/kenmaro/items/1abcf21b38a8e0078370
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Disable to print "Last login..." at console login for Mac.
if [ ! -f $HOME/.hushlogin ]; then
  touch $HOME/.hushlogin
fi

exit 0
