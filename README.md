# Dotfiles for macOS

This repo are some configuration files of my MacOS environment, such as Iterm2, Tmux, Vim and programming environments etc.

### Package overview

* [Oh-My-Zsh][oh-my-zsh]
* [Homebrew][homebrew]
* [Vim][vim] and [Neovim][neovim]
* [Git][git]
* [Tmux][tmux]
* [Node.js][nodejs]
## Prerequisites:
<!-- XCode Command-Line Tools
```bin/sh
xcode-select --install
``` -->
[Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

## Setup
Execute following command for installing extensions:
```bin/sh
# Install Apple's Command Line Tools
xcode-select --install

# Install Homebrew (see http://brew.sh)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install ansible
brew install ansible

# Clone this repository

# Run the playbook
ansible-playbook -i ./hosts ./playbook.yml --ask-become-pass
```

# Inspired by
- [dwmkerr/dotfiles](https://github.com/dwmkerr/dotfiles)