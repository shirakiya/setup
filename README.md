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



## After setup
### bash -> zsh
```
$ sudo vim /etc/shells

# add below line to /etc/shells
/usr/local/bin/zsh


$ chsh -s /usr/local/bin/zsh
```


### karabiner-elements
ref.) https://beadored.com/macos-sierra-karabiner-elements-switching-eisuu-kana/


### iTerm2 profile
ref.) http://qiita.com/reoring/items/a0f3d6186efd11c87f1b


### Ricty
1. download Ricty fonts.
2. click .ttf file and add fonts.
