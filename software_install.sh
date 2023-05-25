#!/bin/bash

# Install Homebrew if not already installed
if ! command -v brew &>/dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install software
brew install --cask brave-browser
brew install --cask visual-studio-code
brew install --cask github
brew install --cask spotify
brew install --cask notion
brew install --cask discord
