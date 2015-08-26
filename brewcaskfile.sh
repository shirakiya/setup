#!/bin/sh

export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

# homebrew-caskのインストール
brew tap phinze/homebrew-cask || true
brew install brew-cask

brew cask install appcleaner
brew cask install coteditor
brew cask install evernote
brew cask install firefox
brew cask install dropbox
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install hipchat
brew cask install iterm2
brew cask install java
brew cask install karabiner
brew cask install kobito
brew cask install virtualbox
brew cask install vagrant
brew cask install seil
brew cask install sequel-pro
brew cask install skype
brew cask install slack
brew cask install vlc
brew cask install xtrafinder
