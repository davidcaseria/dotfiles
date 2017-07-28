#!/usr/bin/env bash

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

find * -type f ! -name "*.*" -print | while read file; do
  if [ $(dirname $file) != "." ]; then
    mkdir -p "$HOME/.$(dirname $file)"
  fi
  echo "Symlinking $(pwd)/$file to $HOME/.$file"
  ln -fs "$(pwd)/$file" "$HOME/.$file"
done
