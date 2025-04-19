> [!NOTE]
> Only if not using brew

## Dump plugins

```bash
code --list-extensions > $HOME/.dotfiles/vscode/extensions
```

## Install plugins

```bash
cat $HOME/.dotfiles/vscode/extensions | xargs -L1 code --install-extension
```
