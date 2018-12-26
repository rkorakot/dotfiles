# rkorakot's dotfiles

## setting up

```sh
$ cd ~
$ git clone https://github.com/rkorakot/dotfiles.git
```

### Prompt

```sh
$ cd ~
$ ln -s ~/dotfiles/.bash_profile ~/.bash_profile
```

### vim

```sh
$ cd ~
$ ln -s ~/dotfiles/.vim ~/.vim
$ ln -s ~/dotfiles/.vimrc ~/.vimrc
$ vim
```

in vim run vim-plug command

> :PlugInstall --sync
>
> :source $MYVIMRC
>
> :PlugUpdate
>
> :PlugUpgrade

done. :)
