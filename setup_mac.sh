#!/bin/bash

set -euo pipefail

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

load_brew_shellenv() {
    if [ -x /opt/homebrew/bin/brew ]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
}

# install command line tools
if ! xcode-select -p > /dev/null 2>&1; then
  printf '\033[31mInstall Command Line Tools just now ...\033[m\n'
  xcode-select --install
  printf '\033[33mWaiting for Command Line Tools installation to complete...\033[m\n'
  until xcode-select -p > /dev/null 2>&1; do
    sleep 5
  done
  printf '\033[32mCompleted Command Line Tools installation\033[m\n'
else
  printf '\033[32mAlready installed Command Line Tools\033[m\n'
fi

SETUP=$HOME/setup
if ! exist $SETUP; then
  git clone git@github.com:shirakiya/setup.git $SETUP
fi

# install Homebrew and apps
load_brew_shellenv
if ! enabled brew; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  load_brew_shellenv
  cd $SETUP
  brew update
  make brew/bundle
  cd $HOME
fi

# Setup git-secrets
IS_NOT_FOUND_GITSECRETS=0
_=$(git secrets 2>&1 > /dev/null) || IS_NOT_FOUND_GITSECRETS=$?
if [ $IS_NOT_FOUND_GITSECRETS -eq 0 ]; then
  git secrets --register-aws --global          # AWS
  git secrets --add 'private_key' --global     # GCP
  git secrets --add 'private_key_id' --global  # GCP
  git secrets --install ~/.git-templates/git-secrets
  git config --global init.templateDir ~/.git-templates/git-secrets
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
