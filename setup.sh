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
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false 

## MongoDB Compass
brew install --cask mongodb-compass

## DBeaver
brew install --cask dbeaver-community

## PGAdmin
brew install postgresql@14
brew install --cask pgadmin4

## APIs (Postman & Insomnia)
brew install --cask postman
brew install --cask insomnia

## JasperStudio
brew install --cask tibco-jaspersoft-studio

## Other utils
brew install --cask lulu # Firewall
brew install --cask devtoys
brew install --cask canva # Photoshop alternative
brew install --cask raycast
brew install --cask chatgpt # hostkey: shift command space
brew install --cask keyclu # hostkey: option + option (hold)
brew install --cask latest
brew install --cask appcleaner
brew install --cask onyx
brew install only-switch
brew install --cask alt-tab
brew install MonitorControl
brew install nikolaeu/numi/numi-cli
brew install bash-completion # (bash completion)
brew install --cask rar
brew install --cask keka

# Setup hacking tools
# Checkout
# https://www.techrepublic.com/article/homebrew-how-to-install-exploit-tools-on-macos/
# To install responsively, run:
#  brew install --cask responsively

## SQLi
brew install sqlmap --cask responsively

## XSS (Dalfox better than XSStrike?)
brew install dalfox

## Enumeration
brew install nmap
brew install ffuf
brew install wpscanteam/tap/wpscan
brew install responder --cask
# https://www.techrepublic.com/article/homebrew-how-to-install-reconnaissance-tools-on-macos/
brew install gobuster

brew install bettercap

## Password
brew install hydra
brew install hashcat
brew install john #(JohnTheRipper)
brew install john-jumbo #(Full version)
brew unlink john #(`john` command should now work)
brew install aircrack-ng # (for wireless)
brew install hcxtools

## Exploits
brew install --cask metasploit
brew install exploitdb # Use `searchsploit` command to check & install new exploits  
brew install --cask armitage 
brew install virustotal-cli # Use to analyse exploit in cli with `vi`

## Wordlists
brew install crunch

## Others
brew install tmux
brew install exiftool
brew install base64
brew install curl
brew install wget
brew install jq
brew install unzip
brew install sevenzip
brew install rar
brew install --cask obsidian
brew install chruby ruby-install
ruby-install ruby # when using ruby always add '--user-install' behind command or just use sudo
brew install perl #(to use .pl files)
brew install php
brew install xz
brew install cpanminus
cpanm Compress::Raw::Lzma
