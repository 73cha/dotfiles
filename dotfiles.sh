#!/bin/sh

dotfiles=(.bash_profile .railsrc .vimrc .gitconfig .gemrc)

for i in ${dotfiles[@]}; do
  ln -sf ~/dotfiles/$i ~/$i
  echo "\033[36m${i}のシンボリックリンクを${HOME}/dotfilesへ作りました。\033[0m"
done
