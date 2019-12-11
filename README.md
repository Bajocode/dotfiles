# dotfiles

```shell
git clone --bare https://github.com/Bajocode/dotfiles $HOME/.dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dot checkout
dot config --local status.showUntrackedFiles no
echo '\nsource $HOME/.shell' >> $HOME/.zshrc
```
