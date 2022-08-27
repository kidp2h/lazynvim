#!/bin/bash sh

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

git clone https://github.com/kidp2h/lazynvim.git ~/.config/nvim --depth 1 && nvim
