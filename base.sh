#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Core utils
sudo pacman -S --needed iwd vim git less openssh pciutils acpi rsync
sudo pacman -S --needed unzip
sudo pacman -S --needed firefox

# Video editing
sudo pacman -S --needed ffmpeg

# Coding``
sudo pacman -S --needed code nodejs

# Fonts
sudo pacman -S --needed terminus-font noto-fonts-emoji ttf-dejavu otf-font-awesome
fc-cache -fv

# Hyprland
sudo pacman -S --needed wl-clipboard waybar mako libnotify wlsunset brightnessctl xsel
killall waybar && waybar &

# Setup SSH
if [[ ! -d "$HOME/.ssh" ]]; then
        ssh-keygen -t ed25519 -C "$USER@$HOSTNAME"
fi

# Fish shell
if [[ ! -f "$HOME/.config/fish/config.fish" ]]; then
	sudo pacman -S --needed fish
        chsh -s /usr/bin/fish
fi

# Git
git config --global init.defaultBranch main
git config pull.rebase false

# Ollama
curl -fsSL https://ollama.com/install.sh | sh
