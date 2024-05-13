#!/usr/bin/env bash

SYSTEM_USER=$SUDO_USER

# Update package manager
sudo apt update
sudo apt upgrade -y 

# Install ZSH
sudo apt install zsh -y 

# Upgrade ZSH to OHMYZSH
sh -c "$(curl -fsSl --insecure https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended && \

# Install Screenfetch (Display Sub System Stats on load)
sudo apt install screenfetch -y

HOME_DIR=$(echo $HOME)
ZSH_CONFIG=$(echo $HOME_DIR"/.zshrc")
OHMYZSH_TEMPLATE=$(echo $HOME_DIR"/.oh-my-zsh/templates/zshrc.zsh-template")

# Overwrite the zsh config with the one from oh-my-zsh if it exist
if test -f "$OHMYZSH_TEMPLATE";
then
    echo "###"
    echo "Replacing zsh config with oh-my-zsh template..."
    sudo cp $(echo $OHMYZSH_TEMPLATE) $(echo $ZSH_CONFIG)
fi

echo "# sub system stats" | sudo tee -a $(echo $ZSH_CONFIG)
echo "" | sudo tee -a $(echo $ZSH_CONFIG)
echo "screenfetch" | sudo tee -a $(echo $ZSH_CONFIG)

# Configure global path
echo "" | sudo tee -a $(echo $ZSH_CONFIG)
echo 'export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH' | sudo tee -a $(echo $ZSH_CONFIG)

# Set ZSH as the default shell
echo $SHELL 
chsh -s $(which zsh)
