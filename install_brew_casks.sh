#!/bin/bash

# Install brew casks
brew install --cask brave-browser
if command -v brave-browser &>/dev/null; then
    echo "Brave browser is installed."
else
    echo "Something is wrong."
fi

brew install --cask visual-studio-code
if command -v code &>/dev/null; then
    echo "Visual Studio Code is installed."
else
    echo "Something is wrong."
fi

brew install --cask github
if command -v github &>/dev/null; then
    echo "GitHub Desktop is installed."
else
    echo "Something is wrong."
fi

brew install --cask spotify
if command -v spotify &>/dev/null; then
    echo "Spotify is installed."
else
    echo "Something is wrong."
fi

brew install --cask notion
if command -v notion &>/dev/null; then
    echo "Notion is installed."
else
    echo "Something is wrong."
fi

brew install --cask discord
if command -v discord &>/dev/null; then
    echo "Discord is installed."
else
    echo "Something is wrong."
fi

brew install --cask azure-cli
if command -v az &>/dev/null; then
    echo "Azure CLI is installed."
else
    echo "Something is wrong."
fi

brew install --cask microsoft-remote-desktop
if command -v microsoft-remote-desktop &>/dev/null; then
    echo "Microsoft Remote Desktop is installed."
else
    echo "Something is wrong."
fi

brew install --cask microsoft-defender
if command -v microsoft-defender &>/dev/null; then
    echo "Microsoft Defender is installed."
else
    echo "Something is wrong."
fi
