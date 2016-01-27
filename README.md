#Setup Mac (Memo)
##Usage
```
curl -fsSL https://raw.github.com/shirakiya/setup/master/setup_mac.sh | sh
```

#Knowledge
##Command Line Tools for Xcodeのインストール
```
xcode-select --install
```

##Homebrewのインストール
http://brew.sh/

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

##Neobundleのインストール
```
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```

##自動起動設定可能なミドルウェアの設定
###mysql
```
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
mysqladmin -uroot password hoge
```

###nginx
```
ln -sfv /usr/local/opt/nginx/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist
```

###Redis
```
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
```

###MongoDB
```
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
```
