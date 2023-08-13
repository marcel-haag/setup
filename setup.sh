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
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> ~/.zshrc
source ~/.zshrc
p10k configure
curl https://raw.githubusercontent.com/josean-dev/dev-environment-files/main/coolnight.itermcolors --output ~/Downloads/coolnight.itermcolors

### ZSH Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo 'add plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)' >> ~/.zshrc
source ~/.zshrc

## DrawIO


## KeePassX


## Browser


### Firefox Developer Edition


### Brave


# Setup dev tools


## SDKMAN


### OpenJDKs


## NVM


## Docker Desktop


## IDEAS


### JETBRAINS Toolbox


### Visual Studio Code


## MongoDB Compass


## DBeaver


## Postman


## JasperStudio


# Setup hacking tools


# Setup work


## SLACK


## Zoom


## Microsoft Office


### TEAMS


### EXCEL


### WORD


### POWERPOINT


