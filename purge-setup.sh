#!/usr/bin/env bash
rm -v ~/.zsh*
rm -rf ~/aws
rm -v ~/awscliv2.zip
rm -rf ~/.oh-my-zsh
rm -rf ~/common-scripts
rm -rf ~/.nvm
sudo rm -rf /usr/local/aws-cli
sudo rm -v /usr/local/bin/aws /usr/local/bin/aws_completer
chsh -s /bin/bash

echo "######"
echo "Purging completed! Please close the terminal and start/open it again."