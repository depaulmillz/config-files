#! /bin/env bash

cp config/zsh/zshrc "$HOME"/.zshrc
touch "$HOME"/.zshconfig

sudo add-apt-repository ppa:neovim-ppa/stable

sudo apt-get install -y build-essential gpg wget curl cmake llvm clangd clang-tools neovim

sudo apt-get install -y python3 python3-pip zsh curl

chsh -s $(which zsh)

pip3 install conan

cd ~

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/depaulmillz/zshThemes.git

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

