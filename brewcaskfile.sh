#!/bin/sh

# homebrew-caskのインストール
if ! brew list | grep brew-cask > /dev/null; then
  brew install caskroom/cask/brew-cask
fi

brew cask install appcleaner
brew cask install coteditor
brew cask install evernote
brew cask install firefox
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install hipchat
brew cask install iterm2
brew cask install java
brew cask install karabiner
brew cask install kobito
brew cask install licecap
brew cask install seil
brew cask install sequel-pro
brew cask install skype
brew cask install slack
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

# インストール時に使用したzipファイルを削除する
brew cask cleanup
