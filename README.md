This will override any dotfiles you already have! Should only be used on a clean install.

```shell
cd $HOME
git clone git@github.com:shtylman/dotfiles.git .dotfiles -n
GIT_DIR=$HOME/.dotfiles/.git GIT_WORKDIR=$HOME git reset HEAD --hard
```

exit any open terminals (ideally logout and back in)
