#!/usr/bin/zsh

SYSTEM_USER=$SUDO_USER

# Update package manager
sudo apt update
sudo apt upgrade -y 

# Install pre-requisite
sudo apt install unzip -y

# Install aws cli v2
curl -k "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip

sudo ./aws/install --update

# Create alias from install bin
HOME_DIR=$(echo $HOME)

echo "" | sudo tee -a $HOME_DIR"/.zshrc"

if [ -d "/usr/local/aws-cli/v2" ] 
then
    echo "# awscli v2 alias" | sudo tee -a $HOME_DIR"/.zshrc"
    echo "alias awsv2=/usr/local/aws-cli/v2/current/bin/aws" | sudo tee -a $HOME_DIR"/.zshrc"
else
    echo "# awscli v2 alias" | sudo tee -a $HOME_DIR"/.zshrc"
    echo "alias awsv2=/usr/local/bin/aws" | sudo tee -a $HOME_DIR"/.zshrc"
fi

source $HOME_DIR"/.zshrc"