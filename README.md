
Clone the dotfiles repo to `$HOME/.dotfiles` as a bare repo. We will checkout the files into their actual places in our home dir.
```shell
cd $HOME
git clone git@github.com:shtylman/dotfiles.git .dotfiles -n
```

Get the script to work with dotfiles. `dotfiles` will act as `git` when we want to edit our dotfiles.
```
GIT_DIR=$HOME/.dotfiles/.git GIT_WORK_TREE=$HOME git reset HEAD -- bin/dotfiles
GIT_DIR=$HOME/.dotfiles/.git GIT_WORK_TREE=$HOME git checkout -- bin/dotfiles
```

See how your current homedir differs from expected dotfiles setup
```shell
dotfiles status
```

To put dotfiles in $HOME into same state as repo dotfiles run this command. WARNING it will override any existing files. So make sure you do `dotfiles diff` first to see if you care.
```shell
dotfiles reset HEAD --hard
```
