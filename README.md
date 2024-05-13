# WSL Setup Scripts
This collection of distribution-agnostic shell scripts facilitates the configuration of WSL for AWS and Node.js development.

## First thing first
Assume WSL installed and enabled, you will need to re-configure everything you have in the `powershell` or `gitbash` or etc. into WSL.

Below scripts to make the process easy for you. However you'll need to setup git first.

**_Important:_**

- All commands from this point on should be run in WSL using Microsoft Terminal
- Ensure you have cloned this repo in your WSL environment first in order to run the script. And script should be run under the cloned repo folder.

If git is not installed yet in your WSL, you can install it via the following:

```bash
sudo apt install git -y
```

When you have git installed, configure it as follows to get it to work with Github, Please use Linux reference:
- [Configuring github SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

## Automated way

Simply automate all by running the following instead.

The script below is provided in this repo. You'll have to clone/download the repo to run it properly.

```bash
sudo chmod +x ./automate-setup.sh & \
. ./automate-setup.sh
```

## Purging the installation

If in any case you messed up the setup process, you can purge the installation items by running the following script.

```bash
sudo chmod +x ./purge-setup.sh & \
. ./purge-setup.sh
```

## References: Common Scripts
| Title | Description                                                  | Link                              |
| ----- | ------------------------------------------------------------ | --------------------------------- |
| ZSH   | Z-Shell to powerup your Bash experience                      | [ReadMe](/scripts/zsh/README.md)  |
| NVM   | Node Version Manager (NVM) to use multiple version of NodeJs | [ReadMe](/scripts/nvm/README.md)   |
| AWS   | AWS CLI to run AWS commands from terminal                    | [ReadMe](/scripts/aws/README.md)   |

**_Recommendation:_**

The order that we should be executing the scripts above are as follows:

ZSH > NVM > AWS
