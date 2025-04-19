# .dotfiles

🚀My dotfiles

## Homebrew

Install [Homebrew](https://brew.sh)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install brew packages

```bash
brew bundle -v --file ~/.dotfiles/brew/Brewfile
```

## Stow

Create symlinks using stow

```bash
stow docker git oh-my-zsh zsh
```

## VS Code

- extensions are backed up in `brew/Brewfile`

macOS

```bash
ln -sf $HOME/.dotfiles/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
ln -sf $HOME/.dotfiles/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
ln -sf $HOME/.dotfiles/vscode/tasks.json $HOME/Library/Application\ Support/Code/User/tasks.json
ln -sf $HOME/.dotfiles/vscode/snippets/ $HOME/Library/Application\ Support/Code/User/snippets/
```

Linux

```bash
ln -sf $HOME/.dotfiles/vscode/keybindings.json $HOME/.config/Code/User/keybindings.json
ln -sf $HOME/.dotfiles/vscode/settings.json $HOME/.config/Code/User/settings.json
ln -sf $HOME/.dotfiles/vscode/tasks.json $HOME/.config/Code/User/tasks.json
ln -sf $HOME/.dotfiles/vscode//snippets/ $HOME/.config/Code/User//snippets/
```

## Update `Brewfile`

```bash
brew bundle dump --file=$HOME/.dotfiles/brew/Brewfile
```

## Further installaation guides

- [VS Code](/vscode/README.md)
