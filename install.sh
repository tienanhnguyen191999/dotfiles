!/bin/bash

Arch Linux
if [ true ] 
then
    # Update software
    pacman -Syyu --noconfirm

    # Install yay ( Pacman wrapper with AUR )
    sudo pacman -S --needed git base-devel --noconfirm
    cd
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm

    # Ibus bamboo
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/BambooEngine/ibus-bamboo/master/archlinux/install.sh)"

    # Essential GUI software
    yay -Sq --noconfirm --sudoloop teamviewer slack-desktop google-chrome skypeforlinux-stable-bin postman-bin discord_arch_electron

    # Essential Terminal tool
    yay -Sq --noconfirm --sudoloop nodejs npm docker xclip php
    # composer
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
    php composer-setup.php
    php -r "unlink('composer-setup.php');"
    # Docker without sudo
    sudo groupadd docker && usermod -aG docker $USER && newgrp docker
    # Docker compose
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose

    # Vim things
    yay -Sq --noconfirm --sudoloop zsh vim neovim ripgrep fzf tmux
    # oh-my-zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    # powerlevel10k
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    # Bring back anhnt's dotfifles
    # Pending

fi

# Debian rest
