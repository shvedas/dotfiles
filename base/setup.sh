#!/bin/bash
source "./base/scripts.sh"

os=$(get_os)
echo "os identified as: $os"

askWorkspace "$os: Default work directory is:" $WORKFOLDER;
mkdir -p "$WORKDIR"
mkdir -p "$BACKUP"

source "./base/homebrew/setup.sh"
source "./base/git/setup.sh"
