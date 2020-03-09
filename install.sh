#!/bin/bash
# A shell script to automate system tool setup for Mac OS X.
source "./base/setup.sh"
# rm -rf "$WORKDIR"

echo "$os: Homebrew: tools instaling..."
brew bundle --file "$(pwd)"/Brewfile

echo "$os: Init NVM..."
mkdir ~/.nvm
source $(brew --prefix nvm)/nvm.sh


# find the installers and run them iteratively
for installer in $(find . -name "*setup.sh"); do
    if ! [[ $installer =~ "./base" ]]; then
        sh -c "${installer}"
    fi
done