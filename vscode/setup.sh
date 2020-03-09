brew cask install visual-studio-code

# Visual Studio Code :: Package list
pkglist=(
  ms-vscode.cpptools
  ms-python.python
  vscode-icons-team.vscode-icons
  slevesque.vscode-hexdump
  sensourceinc.vscode-sql-beautify
  editorconfig.editorconfig
  eamodio.gitlens
  bierner.markdown-preview-github-styles
  arcticicestudio.nord-visual-studio-code
  anseki.vscode-color
  dbaeumer.vscode-eslint
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done