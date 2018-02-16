#!/bin/sh

dotfiles=(.railsrc .gemrc .vimrc .tmux.conf .zshrc)
vimfiles=(basic.vim misc.vim keymapping.vim)
deinfiles=(dein.toml dein_lazy.toml)
vim_userautoload_dir=~/.vim/userautoload
vim_rc_dir=~/.vim/rc

for i in ${dotfiles[@]}; do
  ln -sf ~/dotfiles/$i ~/$i
  echo "\033[36m${HOME}にdotfiles/${i}のシンボリックリンクを作りました。\033[0m"
done



if [! -e vim_userautoload_dir]; then
  mkdir -p vim_userautoload_dir
fi

for j in ${vimfiles[@]}; do
  ln -sf ~/dotfiles/$j "$vim_userautoload_dir/$j"
  echo "\033[36m${HOME}/.vim/userautoload/にdotfiles/${j}のシンボリックリンクを作りました。\033[0m"
done



for k in ${deinfiles[@]}; do
  ln -sf ~/dotfiles/$k ~/.vim/rc/$k
  echo "\033[36m${HOME}/.vim/rcにdotfiles/${k}のシンボリックリンクを作りました。\033[0m"
done
