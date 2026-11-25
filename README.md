# Setup Mac

Initial setup scripts and Homebrew bundle configuration for Apple Silicon Macs.

## Pre setup

1. Generate an SSH key and register it on GitHub.
2. Add the `github.com` host configuration to `~/.ssh/config`:

```sshconfig
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/<key_name|shirakiya_eddsa>
  IdentitiesOnly yes
  AddKeysToAgent yes
  UseKeychain yes
```

3. Verify the SSH connection (and register `github.com` in `~/.ssh/known_hosts`):

```sh
ssh -T git@github.com
```

> Note: Command Line Tools (`xcode-select --install`) are installed automatically by `setup_mac.sh`. If you install full Xcode via the App Store, accept the license beforehand with `sudo xcodebuild -license accept`.

## Usage

```sh
bash <(curl -fsSL https://raw.githubusercontent.com/shirakiya/setup/main/setup_mac.sh)
```

## After setup

### Switch login shell to Homebrew zsh

```sh
grep -qxF '/opt/homebrew/bin/zsh' /etc/shells || echo '/opt/homebrew/bin/zsh' | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/zsh
```

### Clone repositories via `ghq`

Clone repositories listed in `my_repos.txt`:

```sh
cd ~/setup
make clone_repos
```

## Daily Maintenance

Run inside `~/setup`:

- `make brew/bundle`: Install packages from `Brewfile`
- `make brew/dump`: Overwrite `Brewfile` with currently installed packages
- `make brew/cleanup`: Show packages not listed in `Brewfile`
- `make brew/cleanup/exec`: Uninstall packages not listed in `Brewfile`
