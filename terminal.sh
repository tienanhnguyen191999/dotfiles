#!/bin/bash

sudo apt-get install curl zsh -y
sudo curl -L http://install.ohmyz.sh | sh
chsh -s $(which zsh)

git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
sudo apt-get install dconf-cli
git clone https://github.com/dracula/gnome-terminal ~/.gnome-theme
~/.gnome-theme/install.sh
git clone https://github.com/dracula/zsh.git ~/.zsh-theme
ln -s ~/.zsh-theme/dracula.zsh-theme $OH_MY_ZSH/themes/dracula.zsh-theme

