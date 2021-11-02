# Setup Mac
## Pre setup
1. Install Xcode via AppStore.
2. Confirm Xcode License Agreement.
3. Generate and register SSH key to GitHub.
4. Add host info about github.com to `~/.ssh/config`.

This is an example of .ssh/config.

```
Host github.com
  User <user|shirakiya_eddsa>
  IdentityFile ~/.ssh/<key name|shirakiya_eddsa>
  IdentitiesOnly yes
  Compression yes
```


## Usage
```
curl -fsSL https://raw.github.com/shirakiya/setup/master/setup_mac.sh | sh
```


## After setup
Switch to zsh installed with Homebrew.

```
$ sudo vim /etc/shells

# add below line to /etc/shells
/opt/homebrew/bin/zsh


$ chsh -s /opt/homebrew/bin/zsh
```
