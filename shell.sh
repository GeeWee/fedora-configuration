#!/bin/bash
yes | cp -rf ./.zshrc ~/.zshrc
echo "Copied over .zshrc"

mkdir -p ~/.config/kitty/
yes | cp -rf ./kitty.conf ~/.config/kitty/kitty.conf
echo "Copied over kitty.conf"

