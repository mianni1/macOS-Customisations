#!/bin/bash

# Toggle Dark Mode
osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to not dark mode'

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Brave browser
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

# Install Microsoft Defender
brew install --cask microsoft-defender

# Install Azure CLI
brew install azure-cli

# Install Microsoft Remote Desktop
brew install --cask microsoft-remote-desktop

# Enable Gatekeeper
sudo spctl --master-enable

# Change MacBook name
sudo scutil --set HostName "Massimo's Nespresso Machine"
sudo scutil --set LocalHostName "MassimosNespressoMachine"
sudo scutil --set ComputerName "Massimo's Nespresso Machine"
