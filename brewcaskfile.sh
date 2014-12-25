#!/bin/sh

export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
#export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# homebrew-caskのインストール
brew tap phinze/homebrew-cask || true
brew install brew-cask

brew cask install iterm2
brew cask install java
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install virtualbox
brew cask install vagrant
brew cask install alfred
brew cask install kobito
brew cask install dropbox
brew cask install skype
brew cask install vlc
brew cask install evernote
brew cask install sublime-text
brew cask install sequel-pro
brew cask install xtrafinder
brew cask install karabiner
brew cask install appcleaner

# アプリをAlfredの検索対象にする
brew cask alfred link
