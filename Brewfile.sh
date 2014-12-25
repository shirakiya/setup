#!/bin/sh

brew update
brew upgrade

# brewパッケージのインストール
brew install wget
brew install tree
brew install ag
brew install git
brew install tig
brew install zsh
brew install vim
brew install tmux
brew install mysql
brew install redis
brew install nginx
brew install node
brew install plenv perl-build
brew install rbenv ruby-build
brew install rbenv-gemset
brew install rbenv-gem-rehash
brew install ansible

# homebrew-caskのインストール
brew tap phinze/homebrew-cask || true
brew install brew-cask

# cask install iterm2
# cask install java
# cask install google-chrome
# cask install google-japanese-ime
# cask install virtualbox
# cask install vagrant
# cask install alfred
# cask install kobito
# cask install dropbox
# cask install skype
# cask install vlc
