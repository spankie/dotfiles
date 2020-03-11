#!/bin/sh

# script to install and setup new mac system for golang and java webdevelopment

# TODO: add command to install xcode developer tools. Its needed by git

# install homebrew first
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install zsh
brew install zsh powerlevel9k iterm2 zsh-autosuggestions zsh-syntax-highlighting

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# install golang
curl https://dl.google.com/go/go1.14.darwin-amd64.tar.gz

# move golang to installation directory
tar -C /usr/local -xzf go1.14.darwin-amd64.tar.gz

# export the go path in the zshrc file
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zshrc

# create go directory
mkdir ~/go/src/github.com/spankie

# copy the zshrc 
cat .zshrc >> ~/.zshrc


source ~/.zshrc


echo "Run '>shell command' in vscode to activate code command in the terminal"
echo "Check out this link to do more: https://sourabhbajaj.com/mac-setup/"
