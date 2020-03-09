brew bundle --file "$(pwd)"/terminal/Brewfile

echo "$(which zsh)" >> sudo tee -a /etc/shells
chsh -s "$(which zsh)"

# After we have installed zsh, create a link to our zshrc.
echo "$os: setting ~/.zshrc link..."
