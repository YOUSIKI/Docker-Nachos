#!/bin/bash

if [ $DOCKER_SHELL == "bash" ]; then
  echo "using bash as default shell"
  ln -s $(which bash) /bin/myshell
elif [ $DOCKER_SHELL == "fish" ]; then
  echo "using fish as default shell"
  apt-add-repository ppa:fish-shell/rerlease-3
  apt update
  apt install -y fish
  ln -s $(which fish) /bin/myshell
elif [ $DOCKER_SHELL == "zsh" ]; then
  echo "using zsh as default shell"
  apt update
  apt install -y git zsh
  ln -s $(which zsh) /bin/myshell
  /scripts/ohmyzsh.sh
fi
