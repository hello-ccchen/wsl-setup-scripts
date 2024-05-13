#!/usr/bin/env bash

# Install git and wget if it has not been installed yet
sudo apt update
sudo apt upgrade -y

sudo apt install git -y
sudo apt install wget -y

# Get the required scripts 
cd ./scripts 

sudo chmod +x ./pre-requisite.sh
sudo ./pre-requisite.sh 

# Install zsh, nvm and aws
ZSH_PATH=$(echo "./zsh")
NVM_PATH=$(echo "./nvm")
AWS_PATH=$(echo "./aws")

sudo chmod +x $(echo $ZSH_PATH"/setup-zsh.sh") && . $(echo $ZSH_PATH"/setup-zsh.sh") && \
sudo chmod +x $(echo $NVM_PATH"/setup-nvm.sh") && . $(echo $NVM_PATH"/setup-nvm.sh") && \
sudo chmod +x $(echo $AWS_PATH"/setup-awscliv2.sh") && . $(echo $AWS_PATH"/setup-awscliv2.sh")

echo "#######"
echo "All setup are completed! Please close down the terminal and start/open it again"
