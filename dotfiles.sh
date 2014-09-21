#!/bin/sh
dotfiles=(.railsrc .gemrc .vimrc .tmux.conf .zshrc tmux_status-bar_shell/*)

for i in ${dotfiles[@]}; do
  ln -sf ~/dotfiles/$i ~/$i
  echo "\033[36m${HOME}にdotfiles/${i}のシンボリックリンクを作りました。\033[0m"
done
