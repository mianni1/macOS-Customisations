#!/bin/bash

# Dark mode
osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to not dark mode'

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Brave Browser
brew install --cask brave-browser

# Install Visual Studio Code
brew install --cask visual-studio-code

# Install GitHub Desktop
brew install --cask github

# Install Spotify
brew install --cask spotify

# Install Notion
brew install --cask notion

# Install Discord
brew install --cask discord

# Install Azure CLI
brew install azure-cli

# Install Microsoft Remote Desktop
curl -L "https://go.microsoft.com/fwlink/?linkid=868963" -o ~/Downloads/MicrosoftRemoteDesktop.dmg
hdiutil attach ~/Downloads/MicrosoftRemoteDesktop.dmg
cp -R "/Volumes/Microsoft Remote Desktop/Microsoft Remote Desktop.app" /Applications
hdiutil detach "/Volumes/Microsoft Remote Desktop"
rm ~/Downloads/MicrosoftRemoteDesktop.dmg
