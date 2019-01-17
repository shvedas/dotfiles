#!/bin/bash

# A shell script to automate system tool setup for Mac OS X.

echo "*** Homebrew ***"
if [ -z `command -v brew` ]; then
    echo "Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

echo "Homebrew: updating..."
brew update
brew upgrade
brew bundle dump --file=Brewfile.backup --force

echo "Homebrew: tools instaling..."
ln -nfs Brewfile "$HOME"/Brewfile
brew bundle install

echo "Init NVM..."
mkdir ~/.nvm
source $(brew --prefix nvm)/nvm.sh

echo "Create workspace..."
mkdir ~/workspace2