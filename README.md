# Dotfiles
That's a git bare repository containing all my dotfiles

## How to setup

Starting a new git bare repository
```bash
git init --bare $HOME/dotfiles
```

Setting up bash or zsh to work globally
```bash
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' (add this alias to .bashrc or .zshrc)

```

Open a new terminal window and configure git to don't show untracked files
```bash
config config --local status.showUntrackedFiles no
```

## Usage
Now that it's all setup, we can use the command `config` instead of `git`.

Example:
```bash
config add /path/to/file
config commit -m "A short message"
config push
```

## Extra configuratons

### Giant cursor
When setting up dual monitors and the cursor looks huge, add the following lines to `/etc/X11/Xresources/x11-common`:
```
Xcursor.size: 24
Xcursor.theme: DMZ-White 
```
