if [ -z `command -v brew` ]; then
    echo "$os: Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

echo "$os: Homebrew: upgrade..."
brew update
brew upgrade
brew bundle dump --file="$BACKUP"/Brewfile.backup --force

brew bundle --file "$(pwd)"/base/homebrew/Brewfile