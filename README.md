# dotfiles

macOS. Monochrome.

| | |
|---|---|
| terminal | ghostty |
| shell | zsh, starship, atuin, zoxide, fzf |
| windows | yabai, skhd, sketchybar, borders |
| editors | doom emacs, neovim |

## install

```
git clone https://github.com/kpwdv0/dotfiles ~/.config
ln -s ~/.config/shell/zshrc ~/.zshrc
ln -s ~/.config/shell/tmux.conf ~/.tmux.conf
brew bundle --file ~/.config/Brewfile
```

Doom needs `~/.config/emacs/bin/doom sync` after cloning Doom itself.
