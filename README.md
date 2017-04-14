# Setup Mac
## Pre setup
1. install Xcode via AppStore.
2. confirm Xcode License Agreement.
3. generate and register SSH key.
4. add host info about github.com to ~/.ssh/config.

## Usage
```
curl -fsSL https://raw.github.com/shirakiya/setup/master/setup_mac.sh | sh
```

# Knowledge
## Command Line Tools for Xcodeのインストール
```
xcode-select --install
```

## Homebrewのインストール
http://brew.sh/

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Neobundleのインストール
```
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```

## 自動起動設定を行うミドルウェア
- mysql
- Redis
- MongoDB
