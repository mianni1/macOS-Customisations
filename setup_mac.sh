#!/bin/bash

# Toggle Dark Mode
osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to not dark mode'

# Install software
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask brave-browser visual-studio-code github spotify notion discord

# Install Azure CLI
brew install azure-cli

# Install Microsoft Remote Desktop
brew install --cask microsoft-remote-desktop

# Enable Gatekeeper
sudo spctl --master-enable
