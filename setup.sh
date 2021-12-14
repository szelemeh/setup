# Manual
# - Download and install VSCode

# Install brew packages
brew bundle

# Write zsh terminal config
cp .zshrc ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh

# Import VSCode extensions
cat vscode-extensions.txt | while read ext 
do
  code --install-extension $ext > /dev/null
done

# Import VSCode settings