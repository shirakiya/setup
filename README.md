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
Switch to zsh installed with Homebrew.

```
$ sudo vim /etc/shells

# add below line to /etc/shells
/usr/local/bin/zsh


$ chsh -s /usr/local/bin/zsh
```
