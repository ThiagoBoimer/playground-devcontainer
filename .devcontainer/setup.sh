#!/bin/bash

# Avoid interactive prompts during package installation
export DEBIAN_FRONTEND=noninteractive

# Update and install Python and other tools
apt-get update && apt-get install -y \
    python3.12 \
    python3-pip \
    python3-venv \
    curl \
    git \
    build-essential \
    zsh

# Install Go
GO_VERSION=1.22.4
curl -sSL https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz | tar -C /usr/local -xz

# Set up zsh
chsh -s $(which zsh)
su - myself -c 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
su - myself -c 'git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting'
su - myself -c 'git clone https://github.com/tom-auger/cmdtime ~/.oh-my-zsh/custom/plugins/cmdtime'
su - myself -c 'git clone https://github.com/catppuccin/zsh-syntax-highlighting.git ~/.zsh'

# Clean up
apt-get clean
rm -rf /var/lib/apt/lists/*

echo "Setup script executed successfully!"
