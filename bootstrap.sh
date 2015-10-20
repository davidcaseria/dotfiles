#!/usr/bin/env bash

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

find * -type f ! -name "*.*" -print | while read file; do
  ln -fs "$(pwd)/$file" "$HOME/.$file"
done
