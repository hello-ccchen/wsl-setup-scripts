#!/usr/bin/zsh

SYSTEM_USER=$SUDO_USER

# Install NVM
# sh -c "$(curl -fsSl --insecure https://raw.githubusercontent.com/creationix/nvm/master/install.sh)" "" --unattended
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh > nvm-install.sh && \
bash ./nvm-install.sh && \
rm ./nvm-install.sh

NVMSH=nvm.sh

if test -f "$NVMSH";
then
    # Replace the script to fix the remote repo
    cp nvm.sh $(echo $HOME"/.nvm/")
else
    sudo cp $(echo $HOME"/common-scripts/nvm/nvm.sh") $(echo $HOME"/.nvm/")
fi

echo 'export NVM_DIR="$HOME/.nvm"' | sudo tee -a $HOME"/.zshrc"
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' | sudo tee -a $HOME"/.zshrc"  # This loads nvm
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' | sudo tee -a  $HOME"/.zshrc" # This loads nvm bash_completion

source $HOME"/.profile"
source $HOME"/.zshrc"

# Install nodejs 
echo "####"

nvm -v

echo "Installing NodeJs..."
nvm install --lts
