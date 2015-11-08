#!/bin/sh

brew update
brew upgrade

# brewパッケージのインストール
brew install wget
brew install tree
brew install ag
brew install jq
brew install git
brew install tig
brew install zsh
brew install zsh-completions
brew install zsh-syntax-highlighting
brew install source-highlight
brew install vim --with-lua
brew install tmux
brew install mysql
brew install redis
brew install nginx
brew install nodebrew
brew install go
brew install pyenv pyenv-virtualenv
brew install plenv perl-build
brew install rbenv ruby-build
brew install rbenv-gemset
brew install rbenv-gem-rehash
brew install ansible
brew install reattach-to-user-namespace
brew install awscli

brew tap peco/peco
brew install peco

brew tap motemen/ghq
brew install ghq
