#!/usr/bin/env bash

# Variables
USER=$(whoami)
CURRENT_DIR=$(pwd)

# INTRO
echo "Setup for $USER"
date

# Setup basic tools

## HOMEBREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

## iTERM2
brew install --cask iterm2
curl https://raw.githubusercontent.com/josean-dev/dev-environment-files/main/coolnight.itermcolors --output ~/Downloads/coolnight.itermcolors

## Git
brew install git

## Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### PowerLevel10K Theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

### ZSH Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo 'add plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)' >> ~/.zshrc
source ~/.zshrc

## Incase you want to redo the theme config you can use the following command
# p10k configure

## Setup Editors

### VIM
cat $CURRENT_DIR/tuned_vim.txt > $HOME/.vimrc

### NANO
cat $CURRENT_DIR/tuned_nano.txt > $HOME/.nanorc


## DrawIO
brew install --cask drawio

## KeePassX
brew install --cask keepassx


# Browsers

### Firefox Developer Edition

### Brave
brew install --cask brave-browser


# Setup DEV tools

## SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

### OpenJDKs
sdk install java 11.0.20-amzn

## NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
source ~/.zshrc

### Node Versions
nvm install 12

## Docker Desktop (https://docs.docker.com/desktop/install/mac-install/)
softwareupdate --install-rosetta
brew install --cask docker

## IDEAs / UIs

### JETBRAINS Toolbox
https://formulae.brew.sh/cask/jetbrains-toolbox

### Visual Studio Code
brew install --cask visual-studio-code

## MongoDB Compass
brew install --cask mongodb-compass

## DBeaver
brew install --cask dbeaver-community

## PGAdmin
brew install postgresql@14
brew install --cask pgadmin4

## Postman
brew install --cask postman

## Insomnia
brew install --cask insomnia

## JasperStudio
brew install --cask tibco-jaspersoft-studio

# Setup hacking tools

## SQLMAP
brew install sqlmap

## Ffuf
brew install ffuf

## Others
brew install nmap
brew install metasploit
brew install exiftool
brew install base64
brew install curl
brew install jq