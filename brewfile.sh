#!/bin/sh

brew update
brew upgrade

# brewパッケージのインストール
brew install wget
brew install tree
brew install ag
brew install ccat  # `ccat` でcatの出力をカラフルにする
brew install colordiff
brew install jq
brew install nkf
brew install gibo
brew install git
brew install tig
brew install zsh
brew install zsh-completions
brew install zsh-syntax-highlighting
brew install source-highlight
brew install vim --with-lua
brew install tmux
brew install brew-cask
brew install mysql
brew install redis
brew install mongodb
brew install nginx
brew install nodebrew
brew install go
brew install pyenv pyenv-virtualenv
brew install plenv perl-build
brew install rbenv ruby-build
brew install scalaenv
brew install ansible
brew install reattach-to-user-namespace
brew install awscli
brew install pstree
brew install direnv
brew install yarn

brew tap peco/peco
brew install peco

brew tap motemen/ghq
brew install ghq

brew tap homebrew versions
brew intall gcc47
