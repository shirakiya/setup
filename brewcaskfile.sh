#!/bin/sh

# homebrew-caskのインストール
if ! brew tap | grep caskroom/cask > /dev/null; then
  brew tap caskroom/cask
fi

brew cask install appcleaner
brew cask install dropbox
brew cask install evernote
brew cask install firefox
brew cask install flowdock
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install iterm2
brew cask install java
brew cask install karabiner
#brew cask install kobito  # Not found in Homebrew Cask
brew cask install licecap
#brew cask install pocket  # Not found in Homebrew Cask
brew cask install seil
brew cask install sequel-pro
brew cask install skype
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

# インストール時に使用したzipファイルを削除する
brew cask cleanup

# Get app via App Store
# - coteditor
# - skitch
# - slack
# - Wunderlist
