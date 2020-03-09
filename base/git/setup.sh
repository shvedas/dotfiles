if [ -z `command -v git` ]; then
    echo "$os: Installing GIT"
    brew bundle --file "$(pwd)"/base/git/Brewfile
fi;